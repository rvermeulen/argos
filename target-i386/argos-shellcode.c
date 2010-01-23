#include "exec.h"
#include "cpu-defs.h"
#include "libdasm/libdasm.h"
#include "argos-shellcode.h"

int get_current_instr_len(target_ulong eip, unsigned long phys_pc)
{
    INSTRUCTION instr;
    //char instr_str[256];
    int size = get_instruction(&instr, (BYTE*)phys_pc,
            MODE_32);
    //extern struct _IO_FILE *stderr; /* Standard output stream.  */
    /*get_instruction_string(
      &instr,               // pointer to INSTRUCTION structure
      FORMAT_INTEL,         // instruction format: FORMAT_ATT or FORMAT_INTEL
      eip,                  // instruction absolute address
      instr_str,            // string buffer
      sizeof(instr_str)-1   // string length
      );
      argos_logf("0x%lx: %s\n", eip, instr_str);*/

    return size;
}
