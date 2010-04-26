#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "argos-common.h"
#include "argos-utility.h"
#include "argos-tracksc-whitelist.h"

#define EOL '\n'
// Both maximums are set to MAX_PATH defined for the windows platform.
#define MAX_MODULE_NAME_LENGTH_IN_CHARACTERS 260
#define MAX_FUNCTION_NAME_LENGTH_IN_CHARACTERS 260

void skip_comment(FILE * file);
int read_module_name(FILE * file, char * buffer, int max_number_of_characters_in_buffer);
int read_function_name(FILE * file, char * buffer, int max_number_of_characters_in_buffer);

slist_entry * argos_tracksc_read_whitelist(const char * whitelist_path)
{
    FILE * whitelist_file = NULL;
    int error_occurred = 0;

    slist_entry * head_modules,* tail_modules, * tail_functions;
    head_modules = tail_modules = tail_functions = NULL;


    whitelist_file = fopen(whitelist_path, "r");
    if ( whitelist_file )
    {
        char module_name[MAX_MODULE_NAME_LENGTH_IN_CHARACTERS + 1];
        char function_name[MAX_FUNCTION_NAME_LENGTH_IN_CHARACTERS + 1];
        int character = EOF;
        while (  (character = fgetc(whitelist_file)) != EOF && !error_occurred)
        {
            switch(character)
            {
                case '#':
                    skip_comment(whitelist_file);
                    break;
                case '[':
                    if ( read_module_name(whitelist_file, module_name, sizeof(module_name) - 1) > 0 )
                    {
                        argos_logf("Found module %s in tracksc whitelist.\n", module_name);

                        argos_tracksc_whitelist_entry * new_entry = (argos_tracksc_whitelist_entry*)malloc(sizeof(argos_tracksc_whitelist_entry));
                        if ( !new_entry )
                        {
                            argos_logf("Failed to create tracksc whitelist entry!!!\n");
                            exit(1);
                        }

                        new_entry->module_name = strdup(module_name);
                        if ( !new_entry->module_name )
                        {
                            argos_logf("Failed to duplicate string!!!\n");
                            exit(1);
                        }
                        new_entry->functions = NULL;

                        if ( tail_modules )
                        {
                            tail_modules = slist_add_after(tail_modules, new_entry);
                            if (!tail_modules)
                            {
                                argos_logf("Failed to add list entry!!!\n");
                                exit(1);
                            }
                        }
                        else
                        {
                            head_modules = tail_modules = slist_create();
                            if ( !tail_modules )
                            {
                                argos_logf("Failed to create list!!!\n");
                                exit(1);
                            }

                            slist_set_data(tail_modules, new_entry);
                        }

                        tail_functions = NULL;
                    }
                    else
                    {
                        argos_logf("Invalid module name specified in tracksc whitelist!!!\n");
                        error_occurred++;
                    }
                    break;
                default:
                    if ( ungetc(character, whitelist_file) == character )
                    {
                        if ( read_function_name(whitelist_file, function_name, sizeof(function_name) - 1) > 0 )
                        {
                            argos_logf("Found function %s in tracksc whitelist.\n", function_name);

                            char * copy_of_function_name = strdup(function_name);
                            if ( !copy_of_function_name )
                            {
                                argos_logf("Failed to duplicate string!!!\n");
                                exit(1);
                            }

                            if ( tail_functions )
                            {
                                tail_functions = slist_add_after(tail_functions, copy_of_function_name);
                                if ( !tail_functions )
                                {
                                    argos_logf("Failed to add list entry!!!\n");
                                    exit(1);
                                }
                            }
                            else
                            {
                                tail_functions = slist_create();
                                if ( !tail_functions )
                                {
                                    argos_logf("Failed to create list!!!\n");
                                    exit(1);
                                }

                                slist_set_data(tail_functions, copy_of_function_name);
                                argos_tracksc_whitelist_entry * entry = (argos_tracksc_whitelist_entry*)slist_get_data(tail_modules);
                                if ( !entry )
                                {
                                    argos_logf("Unexpected list data!!!\n");
                                    exit(1);
                                }
                                entry->functions = tail_functions;
                            }

                        }
                        else
                        {
                            argos_logf("Invalid module name specified in tracksc whitelist!!!\n");
                            error_occurred++;
                        }
                    }
                    else
                    {
                        argos_logf("Unable to restore first character of function name in input stream!!!\n");
                        error_occurred++;
                    }
                    break;
            }
        }
       fclose(whitelist_file);
    }
    return head_modules;
}

void skip_comment(FILE * file)
{
    int character = EOF;
    do
    {
        character = fgetc(file);
    } while (character != EOF && character != EOL);
}

int read_module_name(FILE * file, char * buffer, int max_number_of_characters_in_buffer)
{
    int number_of_read_characters = 0;
    int found_end_of_module_name = 0;

    int character = fgetc(file);
    number_of_read_characters++;
    while( character != EOF && character != EOL)
    {
        if ( character == ']' )
        {
            found_end_of_module_name = 1;
            break;
        }

        if ( number_of_read_characters <= max_number_of_characters_in_buffer )
        {
            buffer[number_of_read_characters-1] = character;
        }
        else
        {
            break;
        }
        character = fgetc(file);
        number_of_read_characters++;
    }

    while ( character != EOF && character != EOL )
    {
        character = fgetc(file);
    }

    if ( found_end_of_module_name )
    {
        buffer[number_of_read_characters-1] = '\0';
        return number_of_read_characters;
    }
    else
    {
        buffer[0] = '\0';
        return -1;
    }
}

int read_function_name(FILE * file, char * buffer, int max_number_of_characters_in_buffer)
{
    int number_of_read_characters = 0;
    int character = fgetc(file);

    number_of_read_characters++;
    while( character != EOF && character != EOL)
    {
        if ( character == ' ' || character == '\t' )
        {
            break;
        }

        if ( number_of_read_characters <= max_number_of_characters_in_buffer )
        {
            buffer[number_of_read_characters-1] = character;
        }
        else
        {
            break;
        }
        character = fgetc(file);
        number_of_read_characters++;
    }

    while ( character != EOF && character != EOL )
    {
        character = fgetc(file);
    }

    if ( number_of_read_characters > 0 )
    {
        buffer[number_of_read_characters-1] = '\0';
    }
    else
    {
        buffer[0] = '\0';
    }
    return number_of_read_characters;
}

argos_tracksc_whitelist_entry * argos_tracksc_find_module_in_whitelist(const char * module_name, slist_entry * whitelist)
{
    slist_entry * whitelist_cursor = whitelist;
    while ( whitelist_cursor )
    {
        argos_tracksc_whitelist_entry * whitelist_entry = (argos_tracksc_whitelist_entry*)slist_get_data(whitelist_cursor);
        if ( !strcasecmp(module_name, whitelist_entry->module_name) )
        {
            return whitelist_entry;
        }

        whitelist_cursor = slist_next(whitelist_cursor);
    }

    return NULL;
}

int argos_tracksc_whitelist_function_in_whitelist_entry(const char * function_name, argos_tracksc_whitelist_entry * entry)
{
    slist_entry * function_cursor = entry->functions;
    while( function_cursor )
    {
        const char * function_name_contained_in_entry = (const char *)slist_get_data(function_cursor);
        if ( function_name_contained_in_entry )
        {
            if ( !strcasecmp(function_name, function_name_contained_in_entry) )
            {
                return 1;
            }
        }

        function_cursor = slist_next(function_cursor);
    }

    return 0;
}
