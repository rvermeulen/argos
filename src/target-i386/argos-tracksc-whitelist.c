#include "../config-host.h"
#ifdef ARGOS_TRACKSC
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "argos-common.h"
#include "argos-utility.h"
#include "argos-tracksc-whitelist.h"

#define EOL '\n'
// Both maximums are set to MAX_PATH defined for the windows platform.
#define MAX_MODULE_NAME_LENGTH_IN_CHARACTERS 260
#define MAX_FUNCTION_NAME_LENGTH_IN_CHARACTERS 260

typedef enum {
    EXPECTING_MODULE_OR_COMMENT,
    EXPECTING_FUNCTION_OR_COMMENT,
    EXPECTING_MODULE_OR_FUNCTION_OR_COMMENT,
    PARSING_MODULE,
    PARSING_FUNCTION,
    PARSING_COMMENT
} parser_state;

typedef struct
{
    FILE * input;
    char ch;
    unsigned pos;
    unsigned line;
    parser_state state;
    parser_state prev_state;
    const char * error;
} parser_context;

static inline parser_context * create_parser(const char * input_file);
static inline void destroy_parser(parser_context * ctx);
static inline char peek(parser_context * ctx);
static inline char read(parser_context * ctx);
static inline int is_end_of_file(char ch);
static inline void skip_whitespace(parser_context * ctx);
static inline void skip_comment(parser_context * ctx);
static inline int skip_whitespace_until(parser_context * ctx, char stop_ch);

static inline char * read_identifier(parser_context * ctx);
static inline char * read_file_name(parser_context * ctx);
static inline char * read_module_name(parser_context * ctx);
static inline char * read_function_name(parser_context * ctx);

static void whitelist_deleter(void * whitelist_entry);

static inline parser_context * create_parser(const char * input_file)
{
    if ( !input_file)
    {
        return NULL;
    }

    parser_context * ctx =
        (parser_context *)malloc(sizeof(parser_context));
    if ( !ctx )
    {
        return NULL;
    }

    ctx->input = fopen(input_file, "r");
    ctx->ch = -1;
    ctx->pos = 0;
    ctx->line = 1;
    ctx->state = EXPECTING_MODULE_OR_COMMENT;
    ctx->prev_state = EXPECTING_MODULE_OR_COMMENT;
    ctx->error = NULL;

    if ( !ctx->input )
    {
        free(ctx);
        ctx = NULL;
    }

    return ctx;

}

static inline void destroy_parser(parser_context * ctx)
{
    if ( ctx )
    {
        fclose(ctx->input);
        free(ctx);
    }
}

static inline char peek(parser_context * ctx)
{
    char ch = fgetc(ctx->input);
    ungetc(ch, ctx->input);

    return ch;
}

static inline char read(parser_context * ctx)
{
    char ch = fgetc(ctx->input);

    if (ch == EOL)
    {
        ctx->pos = 0;
        ctx->line++;
    }
    else
        ctx->pos++;

    ctx->ch = ch;

    return ch;
}

static inline int is_end_of_file(char ch)
{
    return ch == EOF;
}

static inline void skip_whitespace(parser_context * ctx)
{
    while( isspace(peek(ctx)) )
    {
        read(ctx);
    }
}

static inline int skip_whitespace_until(parser_context * ctx, char stop_ch)
{
    char ch = peek(ctx);
    while( ch != EOF )
    {
        if (ch == stop_ch)
        {
            read(ctx);
            break;
        }
        else if ( isspace(ch) )
            read(ctx);
        else
        {
            ctx->error = "Invalid character, expected whitespace.";
            return ch;
        }

        ch = peek(ctx);
    }

    return 0;
}

static inline char * read_identifier(parser_context * ctx)
{
    char ch = peek(ctx);

    if ( isalpha(ch) || ch == '_' )
    {
        char * identifier, * ptr;

        identifier = ptr = (char *)malloc(256 * sizeof(char));

        if ( !identifier )
            return NULL;

        *ptr++ = read(ctx);

        ch = peek(ctx);
        while( isalnum(ch) || ch == '_')
        {
            if ( ptr < (identifier + 255) )
            {
                *ptr++ = read(ctx);
                ch = peek(ctx);
            }
            else
            {
                break;
            }
        }

        *ptr = '\0';
        return identifier;
    }

    return NULL;
}

// Does not implement to correct parsing of filenames on windows,
// but is sufficient for now.
static inline char * read_file_name(parser_context * ctx)
{
    char ch = peek(ctx);

    if ( isalnum(ch) || ch == '_' || ch == '.' )
    {
        char * identifier, * ptr;

        identifier = ptr = (char *)malloc(256 * sizeof(char));

        if ( !identifier )
            return NULL;

        *ptr++ = read(ctx);

        ch = peek(ctx);
        while( isalnum(ch) || ch == '_' || ch == '.')
        {
            if ( ptr < (identifier + 255) )
            {
                *ptr++ = read(ctx);
                ch = peek(ctx);
            }
            else
            {
                break;
            }
        }

        *ptr = '\0';
        return identifier;
    }

    return NULL;
}

void argos_tracksc_print_whitelist(argos_tracksc_whitelist * whitelist)
{
    slist_entry * module_cursor = whitelist;
    argos_logf("Argos shell-code tracking whitelist:\n");
    while (module_cursor)
    {
        argos_tracksc_whitelist_entry * entry = slist_get_data(module_cursor);
        if (entry)
        {
            slist_entry * function_cursor = entry->functions;
            argos_logf("[%s]\n", entry->module_name);

            while ( function_cursor )
            {
                const char * function_name = 
                    (const char *)slist_get_data(function_cursor);
                if ( function_name )
                {
                    argos_logf("%s\n", function_name);
                }
                else
                {
                    argos_logf("Skipping NULL function name!\n");
                }

                function_cursor = slist_next(function_cursor);
            }
        }
        else
        {
            argos_logf("Skipping NULL whitelist entry!\n");
        }

        module_cursor = slist_next(module_cursor);
    }
}

argos_tracksc_whitelist * argos_tracksc_read_whitelist(
        const char * whitelist_path)
{
    parser_context * ctx;

    argos_tracksc_whitelist * whitelist = NULL, * whitelist_cursor = NULL;
    slist_entry * last_added_function = NULL;
    argos_tracksc_whitelist_entry * current_entry = NULL;

    whitelist = slist_create();
    if (!whitelist)
    {
        argos_logf("Failed to allocate memory for shell-code tracker "
                "white list\n");
        return NULL;
    }

    whitelist_cursor = whitelist;
    ctx = create_parser(whitelist_path);
    if ( ctx )
    {
        while ( !is_end_of_file(peek(ctx)) )
        {
            switch(ctx->state)
            {
                case EXPECTING_MODULE_OR_COMMENT:
                    {
                        skip_whitespace(ctx);
                        switch(peek(ctx))
                        {
                            case '#':
                                ctx->prev_state = ctx->state;
                                ctx->state = PARSING_COMMENT;
                                break;
                            case '[':
                                ctx->prev_state = ctx->state;
                                ctx->state = PARSING_MODULE;
                                break;
                            default:
                                ctx->error = "Expected module or comment.";
                                goto parse_error;
                        };
                    }
                    break;
                case EXPECTING_MODULE_OR_FUNCTION_OR_COMMENT:
                    {
                        skip_whitespace(ctx);
                        switch(peek(ctx))
                        {
                            case '#':
                                ctx->prev_state = ctx->state;
                                ctx->state = PARSING_COMMENT;
                                break;
                            case '[':
                                ctx->prev_state = ctx->state;
                                ctx->state = PARSING_MODULE;
                                break;
                            default:
                                ctx->prev_state = ctx->state;
                                ctx->state = PARSING_FUNCTION;
                                break;
                        };
                    }
                    break;
                case PARSING_COMMENT:
                    {
                        skip_comment(ctx);
                        ctx->state = ctx->prev_state;
                    }
                    break;
                case PARSING_MODULE:
                    {
                        char * module_name = read_module_name(ctx);
                        if ( module_name )
                        {
                            ctx->state =
                                EXPECTING_MODULE_OR_FUNCTION_OR_COMMENT;

                            current_entry =
                                argos_tracksc_find_module_in_whitelist(
                                        module_name, whitelist);

                            if ( !current_entry )
                            {
                                current_entry =
                                    (argos_tracksc_whitelist_entry*)
                                    malloc(
                                            sizeof(
                                                argos_tracksc_whitelist_entry)
                                            );

                                if (!current_entry)
                                {
                                    argos_logf("Failed to allocated memory "
                                            "for shell-code tracking "
                                            "whitelist entry.\n");
                                    free(module_name);
                                    goto error;
                                }

                                current_entry->module_name = module_name;
                                if (slist_get_data(whitelist_cursor) != NULL)
                                {
                                    whitelist_cursor =
                                        slist_add_after(whitelist_cursor,
                                                current_entry);

                                    if (!whitelist_cursor)
                                    {
                                        free(module_name);
                                        goto error;
                                    }
                                }
                                else
                                {
                                    slist_set_data(whitelist_cursor,
                                            current_entry);
                                }
                                last_added_function = NULL;
                            }
                            else
                            {
                                last_added_function =
                                    (current_entry->functions)?
                                    slist_tail(current_entry->functions):NULL;
                            }

                        }
                        else
                        {
                            goto parse_error;
                        }
                    }
                    break;
                case PARSING_FUNCTION:
                    {
                        char * function_name =
                            read_function_name(ctx);
                        if ( function_name )
                        {
                            ctx->state =
                                EXPECTING_MODULE_OR_FUNCTION_OR_COMMENT;

                            if ( last_added_function )
                            {
                                last_added_function =
                                    slist_add_after(last_added_function,
                                        function_name);

                                if (!last_added_function)
                                {
                                    goto error;
                                }
                            }
                            else
                            {
                                current_entry->functions = last_added_function
                                    = slist_create();
                                if (last_added_function)
                                {
                                    slist_set_data(last_added_function,
                                            function_name);
                                }
                                else
                                {
                                    goto error;
                                }
                            }
                        }
                        else
                        {
                            goto parse_error;
                        }
                    }
                    break;
                default:
                    ctx->error = "Reached invalid parser state!";
                    goto error;
            };
        }
        destroy_parser(ctx);
    }
    return whitelist;
parse_error:
    argos_logf("Parsing of whitelist failed with the error: %s\n"
            "Char: '%c' Line %u Position %u.\n", ctx->error,
            peek(ctx), ctx->line, ctx->pos);
error:
    argos_tracksc_destroy_whitelist(whitelist);
    return NULL;
}

static inline void skip_comment(parser_context * ctx)
{
    int character = EOF;
    do
    {
        character = read(ctx);
    } while (character != EOF && character != EOL);
}

static inline char * read_module_name(parser_context * ctx)
{
    if ( read(ctx) == '[')
    {
        char * module_name = read_file_name(ctx);

        if ( module_name )
        {
            if ( peek(ctx)  == ']' )
            {
                read(ctx);
                if (!skip_whitespace_until(ctx, EOL))
                    return module_name;
                else
                    free(module_name);
            }
            else
            {
                free(module_name);
                ctx->error = "Expected end of module definition.";
            }
        }
    }
    else
    {
        ctx->error = "Expected begin of module definition.";
    }

    return NULL;
}

static inline char * read_function_name(parser_context * ctx)
{
    char * function_name = read_identifier(ctx);

    if ( function_name )
    {
        if (!skip_whitespace_until(ctx, EOL))
            return function_name;
        else
            free(function_name);
    }

    return NULL;
}

argos_tracksc_whitelist_entry * argos_tracksc_find_module_in_whitelist(
        const char * module_name, argos_tracksc_whitelist * whitelist)
{
    slist_entry * whitelist_cursor = whitelist;
    while ( whitelist_cursor )
    {
        argos_tracksc_whitelist_entry * whitelist_entry =
            (argos_tracksc_whitelist_entry*)slist_get_data(whitelist_cursor);
        if ( whitelist_entry )
        {
            if ( whitelist_entry->module_name )
            {
                if ( !strcasecmp(module_name, whitelist_entry->module_name) )
                {
                    return whitelist_entry;
                }
            }
            /*else
            {
                argos_logf("Encountered NULL module name in whitelist entry!\n");
            }*/

        }
        /*else
        {
            argos_logf("Encountered NULL whitelist entry!\n");
        }*/
        whitelist_cursor = slist_next(whitelist_cursor);
    }

    return NULL;
}

int argos_tracksc_whitelist_function_in_whitelist_entry(
        const char * function_name, argos_tracksc_whitelist_entry * entry)
{
    slist_entry * function_cursor = entry->functions;
    while( function_cursor )
    {
        const char * function_name_contained_in_entry =
            (const char *)slist_get_data(function_cursor);
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

void argos_tracksc_destroy_whitelist(argos_tracksc_whitelist * whitelist)
{
    slist_destroy(whitelist, whitelist_deleter);
}

static void whitelist_deleter(void * whitelist_entry)
{
    free((void *)
            ((argos_tracksc_whitelist_entry*)whitelist_entry)->module_name);
    slist_destroy(((argos_tracksc_whitelist_entry*)whitelist_entry)->functions,
            free);
}
#endif
