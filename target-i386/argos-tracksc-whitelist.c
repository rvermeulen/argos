#include <stdio.h>
#include "argos-common.h"
#include "argos-tracksc-whitelist.h"

#define EOL '\n'
// Both maximums are set to MAX_PATH defined for the windows platform.
#define MAX_MODULE_NAME_LENGTH_IN_CHARACTERS 260
#define MAX_FUNCTION_NAME_LENGTH_IN_CHARACTERS 260

void skip_comment(FILE * file);
int read_module_name(FILE * file, char * buffer, int max_number_of_characters_in_buffer);
int read_function_name(FILE * file, char * buffer, int max_number_of_characters_in_buffer);

int argos_tracksc_read_whitelist(const char * whitelist_path)
{
    FILE * whitelist_file = NULL;
    int error_occurred = 0;

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
    return (error_occurred == 0)?1:0;
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
