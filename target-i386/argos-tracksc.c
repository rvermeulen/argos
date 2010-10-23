#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <wchar.h>
#include <signal.h>
#include <time.h>
#include <unistd.h>
#include <stdarg.h>

#include "cpu.h"
#include "argos-common.h"
#include "argos-check.h"
#include "../exec-all.h"
#include "libdasm/libdasm.h"
#include "winxp/internals.h"
#include "argos-tracksc-whitelist.h"
#include "argos-tracksc-log.h"
#include "argos-tracksc.h"

static argos_tracksc_log * binary_log = NULL;

static void instr_at_pc(CPUX86State * env);
static void instr_at_addr(CPUX86State * env,
        target_phys_addr_t address);
static void address_translation_failure(CPUX86State * env,
        target_ulong address);
static void memory_allocation_failure(CPUX86State * env, unsigned line);
static void get_imported_modules(CPUX86State * env);
static target_ulong get_current_thread_id(CPUX86State * env);
static unsigned char in_shellcode_context(CPUX86State * env);
static void save_shellcode_context(CPUX86State * env);
static void start_analysis_phase(CPUX86State * env);
static void start_tracking_phase(CPUX86State * env);
static argos_tracksc_imported_module * find_module(CPUX86State * env,
        target_ulong address);
static argos_tracksc_imported_function * find_imported_function(
        CPUX86State * env, argos_tracksc_imported_module * module,
        target_ulong address);
static unsigned char is_loadlibrary_function(const char * function_name);
static void save_return_address(CPUX86State * env);
static void imported_module_deleter(void * imported_module);
static void export_deleter(void * export);
static void check_ret(CPUX86State * env);
static void check_call( CPUX86State * env);
extern void vm_stop(int reason);


static inline target_phys_addr_t translate_address(CPUX86State *env,
        target_ulong address)
{
    target_phys_addr_t physical_page =
        cpu_get_phys_page_debug(env, address + env->segs[R_CS].base);
    if (physical_page != -1)
    {
       uint32_t offset = cpu_get_physical_page_desc(physical_page);
       if ( offset != IO_MEM_UNASSIGNED )
       {
           target_phys_addr_t phys_addr = (target_phys_addr_t)phys_ram_base
               + ( offset & TARGET_PAGE_MASK) + (address & ~TARGET_PAGE_MASK);

           return phys_addr;
       }
       else
       {
           return 0;
       }
    }
    else
    {
        return 0;
    }
}

void argos_tracksc_init(CPUX86State * env)
{
    // Initialize the structure that holds the context of the shell-code
    // being tracked.
    memset(&env->tracksc_ctx, 0, sizeof(env->tracksc_ctx));

    env->tracksc_ctx.instance_state = IDLE;
}

void argos_tracksc_stop(CPUX86State * env)
{
    // Clean-up existing imported modules information.
    slist_destroy(env->tracksc_ctx.imported_modules,
            imported_module_deleter);

    if ( argos_tracksc_loaded_whitelist )
    {
        argos_tracksc_destroy_whitelist(argos_tracksc_loaded_whitelist);
    }

    if (binary_log)
    {
        argos_tracksc_close_log(binary_log);
    }
}

unsigned char argos_tracksc_is_idle( CPUX86State * env)
{
    return env->tracksc_ctx.instance_state == IDLE;
}

unsigned char argos_tracksc_is_tracking( CPUX86State * env)
{
    return env->tracksc_ctx.instance_state == TRACKING;
}

void argos_tracksc_start(CPUX86State * env)
{
    argos_logf("Starting shell-code tracking...\n");

    const unsigned filename_size = 128;
    char filename[filename_size];

    snprintf(filename, filename_size, ARGOS_TRACKSC_LOG_FILENAME_TEMPLATE,
            argos_instance_id);
    binary_log = argos_tracksc_create_log(filename, env);
    if (!binary_log)
    {
        argos_logf("Failed to create binary log!\n");
        exit(EXIT_FAILURE);
    }

    // Save context of the shellcode.
    save_shellcode_context(env);

    // We are now entering the analysis phase.
    start_analysis_phase(env);

    // Now shift to tracking phase.
    start_tracking_phase(env);
}

void argos_tracksc_before_instr_exec(CPUX86State * env)
{
    // Are we in the attacked process and thread containing the payload?
    if ( in_shellcode_context(env) )
    {
        if ( env->tracksc_ctx.running_code == BEFORE_SHELL_CODE
                && argos_dest_pc_isdirty(env, env->eip))
        {
            env->tracksc_ctx.running_code = SHELL_CODE;
        }

        if (env->tracksc_ctx.running_code == SHELL_CODE)
        {
            // For some reason some instructions are executed more than ones.
            if ( env->tracksc_ctx.prev_logged_eip != env->eip )
            {
                env->tracksc_ctx.instr_ctx.eip = env->eip;
                env->tracksc_ctx.instr_ctx.logged = 1;

                instr_at_pc(env);
                argos_tracksc_log_before_execution(binary_log);
            }
            else
            {
                argos_logf("Skipping already logged instruction at 0x%x\n",
                        env->eip);
            }
        }
    }
}

void argos_tracksc_after_instr_exec(CPUX86State * env)
{
    if ( env->tracksc_ctx.instr_ctx.logged )
    {
        argos_tracksc_log_after_execution(binary_log);
        env->tracksc_ctx.prev_logged_eip = env->tracksc_ctx.instr_ctx.eip;
    }

    if (env->tracksc_ctx.running_code == SHELL_CODE)
    {
        if (env->tracksc_ctx.instr_ctx.call_type == BLACKLISTED_CALL ||
                env->tracksc_ctx.instr_ctx.call_type == UNKNOWN_CALL)
        {
            argos_tracksc_stop(env);
            exit(EXIT_SUCCESS);
        }
    }
    // This keeps us save from ret-libc and ROP shell-code.
    else if (env->tracksc_ctx.running_code == BEFORE_SHELL_CODE)
    {
        if (env->tracksc_ctx.instr_ctx.call_type == UNKNOWN_CALL)
        {
            argos_tracksc_stop(env);
            exit(EXIT_FAILURE);
        }
    }

    // Reset the instruction context.
    memset(&env->tracksc_ctx.instr_ctx, 0,
            sizeof(env->tracksc_ctx.instr_ctx));
}

void argos_tracksc_after_instr_raised_exception(CPUX86State * env)
{
}

void check_call( CPUX86State * env)
{

    argos_tracksc_ctx * ctx = &env->tracksc_ctx;
    sigset_t alrmset;

    if (sigprocmask(SIG_BLOCK, &alrmset, NULL) != 0)
        perror("could not temporarily block signals");

    // We are only interested in calls made by the shell-code.
    if ( argos_tracksc_is_tracking(env) && in_shellcode_context(env) )
    {
        // Are we calling code outside the payload?
        if ( !argos_dest_pc_isdirty(env, env->eip))
        {
            // We are only interested in user-mode functions calls.
            // NOTE: This comparison might be incorrect when different
            // addressing modes like PAE are enabled.
            if ( env->eip < 0x80000000 )
            {
                if (argos_tracksc_loaded_whitelist)
                {
                    // Did the shell-code made the call.
                    if ( ctx->running_code == SHELL_CODE )
                    {
                        save_return_address(env);

                        // Find the module coressponding to the current program
                        // counter.
                        argos_tracksc_imported_module * module =
                            find_module(env, env->eip);
                        if ( module )
                        {
                            argos_tracksc_whitelist_entry * whitelist_entry =
                                argos_tracksc_find_module_in_whitelist(
                                        module->name,
                                        argos_tracksc_loaded_whitelist);

                            // We search for the function here, because we want
                            // the symbol for the call to a function belonging
                            // to a blacklisted module.
                            argos_tracksc_imported_function * function =
                                find_imported_function(env, module,
                                        env->eip);
                            // Store the pointer to the called function
                            ctx->instr_ctx.called_function =
                                function;

                            if ( whitelist_entry )
                            {
                                if ( function )
                                {
                                    if ( function->name )
                                    {
                                        if ( argos_tracksc_whitelist_function_in_whitelist_entry(
                                                    function->name,
                                                    whitelist_entry) )
                                        {
                                            if (is_loadlibrary_function(
                                                        function->name))
                                            {
                                                ctx->running_code =
                                                    LOAD_LIBRARY_CODE;
                                                ctx->instr_ctx.call_type =
                                                    WHITELISTED_CALL;
                                            }
                                            else
                                            {
                                                argos_logf("Shell-code "
                                                        "called %s\n",
                                                        function->name);
                                                ctx->running_code =
                                                    NON_SHELL_CODE;
                                                ctx->instr_ctx.call_type =
                                                    WHITELISTED_CALL;
                                            }

                                        }
                                        else
                                        {
                                            argos_logf("Called blacklisted "
                                                    "function %s!%s\n",
                                                    module->name,
                                                    function->name);
                                            ctx->instr_ctx.call_type =
                                                BLACKLISTED_CALL;
                                        }
                                    }
                                }
                                else
                                {
                                    argos_logf("Shell-code is calling unknown "
                                            "function in module %s.\n",
                                            module->name);
                                    ctx->instr_ctx.call_type =
                                        UNKNOWN_CALL;
                                }

                            }
                            else
                            {
                                argos_logf("Shell-code is calling black-listed"
                                        " module %s, stopping Argos...\n",
                                        module->name);
                                ctx->instr_ctx.call_type = BLACKLISTED_CALL;
                            }
                        }
                        else
                        {
                            argos_logf("Shell-code is calling function in an "
                                    "unknown module.\n");
                            ctx->instr_ctx.call_type = UNKNOWN_CALL;
                        }
                    }
                    else if (ctx->running_code == BEFORE_SHELL_CODE)
                    {
                        argos_logf("Encountered unexpected function call "
                                "before we detected any shell-code.\n");
                            ctx->instr_ctx.call_type = UNKNOWN_CALL;
                    }
                    else
                    {
                        ctx->instr_ctx.call_type = WHITELISTED_CALL;
                    }
                }
                else
                {
                    argos_logf("No whitelist specified and the shell-code is "
                            "making an external call.\n");
                    ctx->instr_ctx.call_type = BLACKLISTED_CALL;
                }
            }
            else
            {
                ctx->instr_ctx.call_type = WHITELISTED_CALL;
            }
        }
        else
        {
            // Shell-code is calling itself.
            ctx->instr_ctx.call_type = WHITELISTED_CALL;
        }
    }

    if (sigprocmask(SIG_UNBLOCK, &alrmset, NULL) != 0)
        perror("could not unblock temporarily blocked signals");
}

static target_ulong get_current_thread_id(CPUX86State * env)
{
    target_ulong teb_address = env->segs[R_FS].base;
    target_phys_addr_t translated_teb_address = translate_address(env,
            teb_address);
    if ( !translated_teb_address )
    {
        argos_logf("Invalid teb address!!!\n");
        address_translation_failure(env, teb_address);
    }

    return *((target_ulong*)(translated_teb_address + TEB_CLIENT_ID +
                CLIENT_ID_UNIQUE_THREAD));
}

static unsigned char in_shellcode_context(CPUX86State * env)
{
    if ( env->cr[3] == env->tracksc_ctx.cr3 )
    {
        target_ulong thread_id = get_current_thread_id(env);
        if ( thread_id == env->tracksc_ctx.thread_id )
        {
            return 1;
        }
    }
    return 0;
}

static void address_translation_failure(CPUX86State * env,
        target_ulong address)
{
    argos_logf("Argos failed to translate the address 0x%08x!!!\n", address);
    argos_tracksc_stop(env);
    exit(EXIT_FAILURE);
}

static void memory_allocation_failure(CPUX86State * env, unsigned line)
{
    argos_logf("Memory allocation failure at %s:%i.\n", __FILE__, line);
    argos_tracksc_stop(env);
    exit(EXIT_FAILURE);
}


static void instr_at_pc(CPUX86State * env)
{
    target_ulong program_counter = 0;
    target_phys_addr_t translated_program_counter = 0;

    program_counter = env->segs[R_CS].base + env->eip;
    translated_program_counter = translate_address(env, program_counter);

    if ( translated_program_counter )
    {
        instr_at_addr(env, translated_program_counter);
    }
    else
    {
        argos_logf("Invalid program counter!!!\n");
        address_translation_failure(env, program_counter);
    }
}

static void instr_at_addr(CPUX86State * env, target_phys_addr_t address)
{
    // libdasm should be replaced with a faster function to calculate the
    // length of the instruction, because this is all we need.
    int instruction_length = get_instruction(
            &env->tracksc_ctx.instr_ctx.decoding, (BYTE *)address, MODE_32);
    memset(env->tracksc_ctx.instr_ctx.bytes, 0, ARGOS_MAX_INSTRUCTION_SIZE);
    memcpy(env->tracksc_ctx.instr_ctx.bytes, (unsigned char*)address,
            instruction_length);

#ifdef ARGOS_NET_TRACKER
    unsigned i = 0;
    unsigned max_stage = 0;

    memset(env->tracksc_ctx.instr_ctx.netidx, 0,
            ARGOS_MAX_INSTRUCTION_SIZE);

    for ( i = 0; i < env->tracksc_ctx.instr_ctx.decoding.length; ++i )
    {
        argos_netidx_t* netidx = ARGOS_NETIDXPTR(address + i);
        if (netidx != 0)
        {
            // Currently the stage of the instruction equals 
            // to the highest stage of an individual 
            // instruction byte.
            if ( ARGOS_GET_STAGE(*netidx) > max_stage )
            {
                max_stage = ARGOS_GET_STAGE(*netidx);
            }
            env->tracksc_ctx.instr_ctx.netidx[i] =
                *netidx;
        }
        else
        {
            env->tracksc_ctx.instr_ctx.netidx[i] = 0;
        }
    }
    env->tracksc_ctx.instruction_stage = max_stage;
#endif // ARGOS_NET_TRACKER

}

static argos_tracksc_imported_module * get_module(CPUX86State * env,
        target_ulong base_address)
{
    target_ulong dos_header = base_address;

    target_ulong address_of_dos_header_signature = dos_header +
        IMAGE_DOS_HEADER_E_MAGIC;
    uint16_t * dos_header_signature = (uint16_t*)translate_address(env,
            address_of_dos_header_signature);

    if ( !dos_header_signature )
    {
        argos_logf("Invalid address of DOS signature!!!\n");
        address_translation_failure(env, address_of_dos_header_signature);
    }

    if ( *dos_header_signature != IMAGE_DOS_SIGNATURE  )
    {
        argos_logf("Module has an invalid DOS signature.\n");
        return NULL;
    }

    target_ulong address_of_nt_headers_offset = dos_header +
        IMAGE_DOS_HEADER_E_LFANEW;
    target_ulong * nt_headers_offset = (target_ulong*) translate_address(env,
            address_of_nt_headers_offset);

    if ( !nt_headers_offset )
    {
        argos_logf("Invalid address of NT headers offset!!!\n");
        address_translation_failure(env, address_of_nt_headers_offset);
    }

    target_ulong nt_headers = dos_header + *nt_headers_offset;

    target_ulong address_of_nt_headers_signature = nt_headers +
        IMAGE_NT_HEADERS_SIGNATURE;
    target_ulong * nt_headers_signature = (target_ulong*)
        translate_address(env, address_of_nt_headers_signature);

    if ( !nt_headers_signature )
    {
        argos_logf("Invalid address of PE signature!!!\n");
        address_translation_failure(env, address_of_nt_headers_signature);
    }

    if ( *nt_headers_signature != IMAGE_PE_SIGNATURE )
    {
        argos_logf("Module has an invalid PE signature.\n");
        return NULL;
    }

    target_ulong optional_header = nt_headers +
        IMAGE_NT_HEADERS_OPTIONAL_HEADER;

    target_ulong address_of_size_of_image = optional_header +
        IMAGE_OPTIONAL_HEADER_SIZE_OF_IMAGE;
    target_ulong * size_of_image = (target_ulong*) translate_address(env,
            address_of_size_of_image);

    if ( !size_of_image )
    {
        argos_logf("Invalid address of size of image!!!\n");
        address_translation_failure(env, address_of_size_of_image);
    }

    target_ulong end_address = dos_header + *size_of_image;

    target_ulong address_of_number_of_rva_and_sizes = optional_header +
        IMAGE_OPTIONAL_HEADER_NUMBER_OF_RVA_AND_SIZES;
    target_ulong * number_of_rva_and_sizes = (target_ulong*)
        translate_address(env, address_of_number_of_rva_and_sizes);

    if ( !number_of_rva_and_sizes )
    {
        argos_logf("Invalid address of number of rva and sizes!!!\n");
        address_translation_failure(env, address_of_number_of_rva_and_sizes);
    }

    if ( *number_of_rva_and_sizes == 0 )
    {
        argos_logf("Module has no sections!\n");
        return NULL;
    }

    target_ulong export_data_directory = optional_header +
        IMAGE_OPTIONAL_HEADER_DATA_DIRECTORY;
    target_ulong address_of_export_directory_virtual_address =
        export_data_directory + IMAGE_DATA_DIRECTORY_VIRTUAL_ADDRESS;

    target_ulong * export_directory_virtual_address = (target_ulong*)
        translate_address(env, address_of_export_directory_virtual_address);
    if ( !export_directory_virtual_address )
    {
        argos_logf("Invalid address of export director virtual address!!!\n");
        address_translation_failure(env,
                address_of_export_directory_virtual_address);
    }

    if ( *export_directory_virtual_address != 0 )
    {
        argos_tracksc_imported_module * imported_module =
            (argos_tracksc_imported_module *)
            malloc(sizeof(argos_tracksc_imported_module));

        if ( imported_module == NULL)
        {
            argos_logf("Unable to allocate memory for analysis.\n");
            return NULL;
        }

        imported_module->begin_address = dos_header;
        imported_module->end_address = end_address;

        target_ulong export_directory = dos_header +
            *export_directory_virtual_address;
        target_ulong address_of_module_name_rva = export_directory +
            IMAGE_EXPORT_DIRECTORY_NAME;
        target_ulong * module_name_rva = (target_ulong*)translate_address(env,
                address_of_module_name_rva);

        if ( module_name_rva )
        {
            target_ulong address_of_module_name = dos_header +
                *module_name_rva;
            const char * module_name = (const char *)translate_address(env,
                    address_of_module_name );
            if ( module_name )
            {
                strncpy(imported_module->name, module_name, ARGOS_MAX_PATH);
                imported_module->name[ARGOS_MAX_PATH-1] = '\0';
            }
            else
            {
                free(imported_module);
                argos_logf("Invalid address of module name!!!\n");
                address_translation_failure(env, address_of_module_name);
            }
        }
        else
        {
            free(imported_module);
            argos_logf("Invalid address of module name rva!!!\n");
            address_translation_failure(env, address_of_module_name_rva);
        }

        target_ulong address_of_module_base_ordinal = export_directory +
            IMAGE_EXPORT_DIRECTORY_BASE;
        target_ulong * module_base_ordinal = (target_ulong*)
            translate_address(env, address_of_module_base_ordinal);
        if ( !module_base_ordinal )
        {
            free(imported_module);
            argos_logf("Invalid address of module base ordinal!!!\n");
            address_translation_failure(env, address_of_module_base_ordinal);
        }

        target_ulong address_of_number_of_functions = export_directory +
            IMAGE_EXPORT_DIRECTORY_NUMBER_OF_FUNCTIONS;
        target_ulong * number_of_functions = (target_ulong*)
            translate_address(env, address_of_number_of_functions);
        if ( !number_of_functions )
        {
            free(imported_module);
            argos_logf("Invalid address of number of functions!!!\n");
            address_translation_failure(env, address_of_number_of_functions);
        }

        target_ulong address_of_number_of_functions_with_names =
            export_directory + IMAGE_EXPORT_DIRECTORY_NUMBER_OF_NAMES;
        target_ulong * number_of_functions_with_names = (target_ulong*)
            translate_address(env, address_of_number_of_functions_with_names);
        if ( !number_of_functions_with_names )
        {
            free(imported_module);
            argos_logf("Invalid address of number of functions with "
                    "names!!!\n");
            address_translation_failure(env,
                    address_of_number_of_functions_with_names);
        }

        target_ulong address_of_function_address_table_rva = export_directory +
            IMAGE_EXPORT_DIRECTORY_ADDRESS_OF_FUNCTIONS;
        target_ulong * function_address_table_rva = (target_ulong*)
            translate_address(env, address_of_function_address_table_rva);
        if ( !function_address_table_rva )
        {
            free(imported_module);
            argos_logf("Invalid address of address of functions!!!\n");
            address_translation_failure(env,
                    address_of_function_address_table_rva);
        }

        target_ulong address_of_function_name_table_rva = export_directory +
            IMAGE_EXPORT_DIRECTORY_ADDRESS_OF_NAMES;
        target_ulong * function_name_table_rva = (target_ulong*)
            translate_address(env, address_of_function_name_table_rva);
        if ( !function_name_table_rva )
        {
            free(imported_module);
            argos_logf("Invalid address of address of names!!!\n");
            address_translation_failure(env,
                    address_of_function_name_table_rva);
        }

        target_ulong address_of_function_ordinal_table_rva = export_directory +
            IMAGE_EXPORT_DIRECTORY_ADDRESS_OF_NAME_ORDINALS;
        target_ulong * function_ordinal_table_rva = (target_ulong*)
            translate_address(env, address_of_function_ordinal_table_rva);
        if ( !function_ordinal_table_rva )
        {
            free(imported_module);
            argos_logf("Invalid address of address of name ordinals!!!\n");
            address_translation_failure(env,
                    address_of_function_ordinal_table_rva);
        }

        imported_module->number_of_functions = *number_of_functions;
        imported_module->number_of_functions_with_names =
            *number_of_functions_with_names;
        imported_module->function_address_table = *function_address_table_rva +
            imported_module->begin_address;
        imported_module->function_name_table = *function_name_table_rva +
            imported_module->begin_address;
        imported_module->function_ordinal_table = *function_ordinal_table_rva +
            imported_module->begin_address;
        imported_module->base_ordinal = *module_base_ordinal;
        imported_module->exports = NULL;

        return imported_module;
    }
    else
    {
        return NULL;
    }
}

// Description: Converts UTF-16 to UTF-8, the quick and dirty way.
// Returns the number of converted characters.
// Note: The source_length is the length EXCLUDING the zero terminating
// characters, but the destination size is the size of the buffer INCLUDING
// the zero terminating character. The source and destination pointers MUST
// BE valid pointers.
static uint32_t utf16_to_utf8(uint16_t * source, uint32_t source_length,
        char * destination, uint32_t destination_size)
{
   uint32_t i = 0, number_converted_characters = 0;
   for (; i < source_length && i < destination_size; ++i)
   {
       uint16_t uc = source[i];
       if ( (uc & 0xFF00) == 0 )
       {
           destination[i] = (uc & 0xFF);
           number_converted_characters++;
       }
       else
       {
           destination[i] = '?';
       }
   }
   destination[i] = '\0';
   return number_converted_characters;
}

static void get_imported_modules(CPUX86State * env)
{
    target_ulong teb = env->segs[R_FS].base;

    target_ulong address_of_pointer_to_peb = teb +
            TEB_PROCESS_ENVIRONMENT_BLOCK;
    target_ulong * pointer_to_peb = (target_ulong*) translate_address(env,
            address_of_pointer_to_peb);

    if (!pointer_to_peb)
    {
        argos_logf("Invalid pointer to peb!!!\n");
        address_translation_failure(env, address_of_pointer_to_peb);
    }

    target_ulong peb = *pointer_to_peb;

    target_ulong address_of_pointer_to_loader_data = peb + PEB_LOADER_DATA;
    target_ulong * pointer_to_loader_data = (target_ulong*)
        translate_address(env, address_of_pointer_to_loader_data);

    if (!pointer_to_loader_data)
    {
        argos_logf("Invalid address of pointer to peb loader data!!!\n");
        address_translation_failure(env, address_of_pointer_to_loader_data);
    }

    target_ulong loader_data = *pointer_to_loader_data;

    target_ulong address_of_is_initialized = loader_data +
        PEB_LDR_DATA_INITIALIZED;
    uint8_t * initialized = (uint8_t*) translate_address(env,
            address_of_is_initialized);

    if ( !initialized )
    {
        argos_logf("Invalid address of is initialized loader data!!!\n");
        address_translation_failure(env, address_of_is_initialized);
    }

    if ( *initialized )
    {
        target_ulong module_list = loader_data +
            PEB_LDR_DATA_IN_LOAD_ORDER_MODULE_LIST;

        target_ulong * pointer_to_loader_data_entry = (target_ulong*)
            translate_address(env, module_list + LIST_ENTRY_FLINK);

        if ( !pointer_to_loader_data_entry )
        {
            argos_logf("Invalid address to pointer of loader data entry!!!\n");
            address_translation_failure(env, module_list);
        }

        target_ulong loader_data_entry = *pointer_to_loader_data_entry;

        slist_entry * tail = NULL;

        while(1)
        {
            char module_basename[ARGOS_MAX_PATH];

            target_ulong address_of_module_base = loader_data_entry +
                LDR_MODULE_BASE_ADDRESS;
            target_ulong * module_base = (target_ulong*) translate_address(env,
                    address_of_module_base);

            if ( !module_base )
            {
                argos_logf("Invalid address of module base!!!\n");
                address_translation_failure(env, address_of_module_base);
            }

            target_ulong address_of_module_base_dll_name_length =
                loader_data_entry + LDR_MODULE_BASE_DLL_NAME +
                UNICODE_STRING_LENGTH;
            uint16_t * module_base_dll_name_length = (uint16_t*)
                translate_address(env, address_of_module_base_dll_name_length);

            if ( !module_base_dll_name_length )
            {
                argos_logf("Invalid address of module base dll name "
                        "length!!!\n");
                address_translation_failure(env,
                        address_of_module_base_dll_name_length);
            }

            uint16_t module_base_dll_name_length_in_characters =
                *module_base_dll_name_length / sizeof(uint16_t);

            if (module_base_dll_name_length_in_characters > 0 &&
                    module_base_dll_name_length_in_characters < ARGOS_MAX_PATH)
            {
                target_ulong address_of_pointer_to_module_base_dll_name =
                    (loader_data_entry + LDR_MODULE_BASE_DLL_NAME +
                     UNICODE_STRING_BUFFER);
                target_ulong * address_of_module_base_dll_name =
                    (target_ulong*) translate_address(env,
                            address_of_pointer_to_module_base_dll_name);

                if ( !address_of_module_base_dll_name )
                {
                    argos_logf("Invalid address of pointer to module base dll "
                            "name!!!\n");
                    address_translation_failure(env,
                            address_of_pointer_to_module_base_dll_name);
                }

                uint16_t * module_base_dll_name = (uint16_t *)
                    translate_address(env,  *address_of_module_base_dll_name);

                if ( module_base_dll_name )
                {
                    utf16_to_utf8(module_base_dll_name,
                            module_base_dll_name_length_in_characters,
                            module_basename, sizeof(module_basename));
                }
                else
                {
                    argos_logf("Invalid address of loader module base dll "
                            "name!!!\n");
                    address_translation_failure(env, 
                            *address_of_module_base_dll_name);
                }
            }

            argos_tracksc_imported_module * imported_module = get_module(env,
                    *module_base);

            if ( imported_module == NULL )
            {
                goto next_module;
            }

            if ( tail )
            {
                tail = slist_add_after(tail, imported_module);
                if ( !tail )
                {
                    memory_allocation_failure(env, __LINE__);
                }
            }
            else
            {
                slist_entry * head = slist_create();
                if ( head )
                {
                    slist_set_data(head, imported_module);
                    env->tracksc_ctx.imported_modules = tail = head;
                }
                else
                {
                    memory_allocation_failure(env, __LINE__);
                }
            }
next_module:
            pointer_to_loader_data_entry = (target_ulong*)
                translate_address(env, loader_data_entry + LIST_ENTRY_FLINK);

            if ( !pointer_to_loader_data_entry )
            {
                argos_logf("Invalid address to pointer of loader data "
                        "entry!!!\n");
                address_translation_failure(env, module_list);
            }

            loader_data_entry = *pointer_to_loader_data_entry;

            // If we are back at the beginning of the list, we are done.
            if ( loader_data_entry == module_list )
            {
                break;
            }
        }
    }
    return;
}

static void save_shellcode_context(CPUX86State * env)
{
    env->tracksc_ctx.cr3 = env->cr[3];
    env->tracksc_ctx.thread_id = get_current_thread_id(env);
    argos_logf("Context: CR3 = 0x%x Thead Id = %u.\n",
            env->tracksc_ctx.cr3,
            env->tracksc_ctx.thread_id);
}

static void start_analysis_phase(CPUX86State * env)
{
    /*clock_t begin, end; begin = end = (clock_t) -1;
    double runningtime_in_seconds = 0.0;
    long CLOCK_TICKS_PER_SECOND = sysconf(_SC_CLK_TCK);
    begin = clock();
    if ( begin == (clock_t)-1)
    {
        argos_logf("Failed to retrieve clock ticks.\n");
    }*/

    env->tracksc_ctx.instance_state = ANALYZING;

    argos_logf("Searching for imported modules.\n");
    get_imported_modules(env);


    /*end = clock();
    if ( end == (clock_t)-1)
    {
        argos_logf("Failed to retrieve clock ticks.\n");
    }
    runningtime_in_seconds = (end - begin)/CLOCK_TICKS_PER_SECOND;

    argos_logf("Analysis phase running time: %u ticks %f seconds.\n", end - begin, runningtime_in_seconds);
    */
}

static void start_tracking_phase(CPUX86State * env)
{
    env->tracksc_ctx.instance_state = TRACKING;
    env->tracksc_ctx.single_step = 1;
    tb_flush(env);

    env->tracksc_ctx.running_code = BEFORE_SHELL_CODE;

    argos_logf("Successfully instanciated shellcode tracking\n");
}

// Find the module for which the given address is in its range.
// Returns NULL when no module could be found.
static argos_tracksc_imported_module * find_module(CPUX86State * env,
        target_ulong address)
{
    slist_entry * cursor = env->tracksc_ctx.imported_modules;

    while ( cursor )
    {
        argos_tracksc_imported_module * module =
            (argos_tracksc_imported_module*) slist_get_data(cursor);
        if (module)
        {
            if ( module->begin_address <= address &&
                    module->end_address >= address )
            {
                return module;
            }
        }

        cursor = slist_next(cursor);
    }
    return NULL;
}

static argos_tracksc_imported_function * find_imported_function(
        CPUX86State * env,
        argos_tracksc_imported_module * module,
        target_ulong address)
{
    if (module->exports)
    {
        // We have loaded the exports in the analysis phase, search this list.
        slist_entry * cursor = module->exports;
        while ( cursor )
        {
            argos_tracksc_imported_function * function =
                (argos_tracksc_imported_function*) slist_get_data(cursor);
            if ( function )
            {
                if ( function->address == address )
                {
                    return function;
                }
            }

            cursor = slist_next(cursor);
        }

    }

    // We have deferred loading the exports in the analysis phase,
    // search the export directory.
    target_ulong function_address_table = module->function_address_table;
    target_ulong function_ordinal_table = module->function_ordinal_table;
    target_ulong function_name_table = module->function_name_table;

    unsigned i = 0;
    for(; i < module->number_of_functions; ++i)
    {
        target_ulong function_ordinal_table_entry_offset =
            i * sizeof(uint16_t);
        target_ulong address_of_function_ordinal =
            function_ordinal_table
            + function_ordinal_table_entry_offset;
        uint16_t * function_ordinal = (uint16_t *)
            translate_address(env, address_of_function_ordinal);

        if ( function_ordinal )
        {
            target_ulong function_address_table_entry_offset =
                *function_ordinal * sizeof(uint32_t);
            target_ulong address_of_function_address =
                function_address_table
                + function_address_table_entry_offset;
            target_ulong * function_address =
                (target_ulong*) translate_address(env,
                        address_of_function_address);

            if ( function_address )
            {
                if ((*function_address
                    + module->begin_address) == address)
                {
                    target_ulong function_name_table_entry_offset = i
                        * sizeof(uint32_t);
                    target_ulong address_of_function_name_rva =
                        function_name_table
                        + function_name_table_entry_offset;
                    target_ulong * function_name_rva = (target_ulong*)
                        translate_address(env, address_of_function_name_rva);

                    if ( function_name_rva )
                    {
                        target_ulong address_of_function_name = 
                            module->begin_address + *function_name_rva;
                        const char * function_name = (const char *)
                            translate_address(env, address_of_function_name);

                        if ( function_name )
                        {
                            argos_tracksc_imported_function * export =
                                (argos_tracksc_imported_function *)
                                malloc(sizeof(argos_tracksc_imported_function));

                            if ( export != NULL )
                            {
                                export->module = module;
                                export->ordinal = *function_ordinal;
                                export->name = strdup(function_name);
                                export->address = address;
                                if ( export->name != NULL )
                                {
                                    if (!module->exports)
                                    {
                                        module->exports = slist_create();
                                        if (module->exports)
                                        {
                                            slist_set_data(module->exports,
                                                    export);
                                        }
                                        else
                                        {
                                            memory_allocation_failure(env,
                                                    __LINE__);
                                        }
                                    }
                                    else
                                    {
                                        if (!slist_add_after(
                                                    slist_tail(module->exports)
                                                    , export))
                                        {
                                            memory_allocation_failure(env,
                                                    __LINE__);
                                        }
                                    }
                                    return export;
                                }
                                else
                                {
                                    memory_allocation_failure(env, __LINE__);
                                }

                            }
                            else
                            {
                                memory_allocation_failure(env, __LINE__);
                            }
                        }
                    }
                }
            }
        }
    }
    return NULL;
}

static unsigned char is_loadlibrary_function(const char * function_name)
{
    if ( strcmp(function_name, "LoadLibraryA") == 0 )
    {
        return 1;
    }
    else if (strcmp(function_name, "LoadLibraryW") == 0)
    {
        return 1;
    }
    else if (strcmp(function_name, "LoadLibraryExA") == 0)
    {
        return 1;
    }
    else if (strcmp(function_name, "LoadLibraryExW") == 0)
    {
        return 1;
    }
    else
    {
        return 0;
    }

}

// This function assumes that the top of the stack points to the
// return address.
static void save_return_address(CPUX86State * env)
{
    target_ulong * return_address = (target_ulong *)translate_address(env,
            env->regs[R_ESP]);
    if ( return_address )
    {
        env->tracksc_ctx.saved_return_address = *return_address;
    }
    else
    {
        address_translation_failure(env, env->regs[R_ESP]);
    }
}

// Here we save the content of the eax register when the eip equals the
// value of the saved return address.
void check_ret(CPUX86State * env)
{
    sigset_t alrmset;

    if (sigprocmask(SIG_BLOCK, &alrmset, NULL) != 0)
        perror("could not temporarily block signals");

    // Are we returning back from a non-shell-code function.
    if ( argos_tracksc_is_tracking(env) && in_shellcode_context(env)
            && ( env->tracksc_ctx.running_code == NON_SHELL_CODE
                || env->tracksc_ctx.running_code == LOAD_LIBRARY_CODE))
    {
        // Are we returning back to the shell-code.
        if ( env->tracksc_ctx.saved_return_address != 0
                && env->tracksc_ctx.saved_return_address == env->eip )
        {
            // Are we returning from a loadlibray function?
            if (env->tracksc_ctx.running_code == LOAD_LIBRARY_CODE)
            {
                target_ulong module_addr = env->regs[R_EAX];

                // Did the load library function succeeded?
                if ( module_addr != 0 )
                {
                    argos_tracksc_imported_module * loaded_module =
                        get_module(env, module_addr);
                    if ( loaded_module )
                    {
                        argos_logf("Loaded %s\n", loaded_module->name);
                        if (env->tracksc_ctx.imported_modules)
                        {
                            slist_entry * tail = slist_add_after(
                                    env->tracksc_ctx.imported_modules,
                                    loaded_module);
                            if (!tail)
                            {
                                memory_allocation_failure(env, __LINE__);
                            }
                        }
                        else
                        {
                            slist_entry * head = slist_create();
                            if ( head )
                            {
                                slist_set_data(head, loaded_module);
                                env->tracksc_ctx.imported_modules = head;
                            }
                            else
                            {
                                memory_allocation_failure(env, __LINE__);
                            }
                        }
                    }
                    else
                    {
                        argos_logf("Loaded module is not a valid library!\n");
                    }
                }
                else
                {
                    argos_logf("LoadLibrary call failed, skipping module "
                            "analysis.\n");
                }
            }

            // We back at running shell-code.
            env->tracksc_ctx.running_code = SHELL_CODE;
        }
    }

    if (sigprocmask(SIG_UNBLOCK, &alrmset, NULL) != 0)
        perror("could not unblock temporarily blocked signals");
}

static void imported_module_deleter(void * imported_module)
{
    slist_destroy(((argos_tracksc_imported_module *) imported_module)->exports,
            export_deleter);
    free(imported_module);
}

static void export_deleter(void * export)
{
    free((void *)((argos_tracksc_imported_function *)export)->name);
    free(export);
}

void argos_tracksc_on_call(CPUX86State * env)
{
    check_call(env);
}
void argos_tracksc_on_jmp(CPUX86State * env)
{
    check_call(env);
    check_ret(env);
}
void argos_tracksc_on_ret(CPUX86State * env)
{
    check_ret(env);
}

void argos_tracksc_on_translate_ld_addr(CPUX86State * env, target_ulong vaddr,
        target_phys_addr_t paddr, target_ulong value, target_ulong size)
{
    argos_tracksc_ctx * ctx = &env->tracksc_ctx;
    ctx->instr_ctx.load.eip = env->eip;
    ctx->instr_ctx.load.vaddr = vaddr;
    ctx->instr_ctx.load.paddr = (target_ulong)(paddr -
            (target_phys_addr_t)phys_ram_base);
    ctx->instr_ctx.load.value = value;
    ctx->instr_ctx.load.size = size;
#ifdef ARGOS_NET_TRACKER
    ctx->instr_ctx.netidx = ARGOS_NETIDXPTR(paddr);
#endif
}
void argos_tracksc_on_translate_st_addr(CPUX86State * env, target_ulong vaddr,
        target_phys_addr_t paddr, target_ulong value, target_ulong size)
{
    argos_tracksc_ctx * ctx = &env->tracksc_ctx;
    ctx->instr_ctx.store.eip = env->eip;
    ctx->instr_ctx.store.vaddr = vaddr;
    ctx->instr_ctx.store.paddr = (target_ulong)(paddr -
            (target_phys_addr_t)phys_ram_base);
    ctx->instr_ctx.store.value = value;
    ctx->instr_ctx.store.size = size;
#ifdef ARGOS_NET_TRACKER
    ctx->instr_ctx.netidx = ARGOS_NETIDXPTR(paddr);
#endif
}

void argos_tracksc_on_system_call(CPUX86State * env)
{
    if ( argos_tracksc_is_tracking(env) && in_shellcode_context(env) )
    {
        argos_tracksc_ctx * ctx = &env->tracksc_ctx;
        // Shell-code is not allowed to directly call syscalls.
        if ( ctx->running_code == SHELL_CODE)
        {
            argos_logf("Prevented shell-code from calling a system call, "
                    "stopping Argos...\n");
            argos_tracksc_stop(env);
            exit(EXIT_SUCCESS);
        }
        else if (ctx->running_code == BEFORE_SHELL_CODE)
        {
            argos_logf("Unexpected system call before we encounterd "
                    "shell-code, stopping Argos...\n");
            argos_tracksc_stop(env);
            exit(EXIT_FAILURE);
        }
    }
}

void argos_tracksc_on_int2e(CPUX86State * env)
{
    // Windows NT uses the interrupt 2eh to perform system calls.
    extern char * argos_wprofile;
    if (!strcmp(argos_wprofile, "win2k" ))
    {
        argos_tracksc_on_system_call(env);
    }
}
