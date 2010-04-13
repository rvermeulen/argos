#include <stdlib.h>
#include "argos-utility.h"

slist_entry* slist_create()
{
    slist_entry * new_slist = NULL;

    new_slist = (slist_entry*) malloc(sizeof(slist_entry));
    if ( new_slist )
    {
        new_slist->next = new_slist->data = NULL;
        return new_slist;
    }
    else
    {
        return NULL;
    }
}

void slist_destroy(slist_entry * head, custom_data_deleter data_deleter)
{
    slist_entry * cursor = NULL, * next_cursor = NULL;

    cursor = head;

    while(cursor)
    {
        if ( cursor->data )
        {
            data_deleter(cursor->data);
        }

        next_cursor = cursor->next;
        free(cursor);
        cursor = next_cursor;
    }
}

slist_entry* slist_add_after(slist_entry * entry, void * data)
{
    slist_entry * new_entry = NULL, * saved_next_entry = NULL;
    if ( entry->next )
    {
        saved_next_entry = entry->next;
    }

    new_entry = (slist_entry*) malloc(sizeof(slist_entry));
    if ( new_entry )
    {
        new_entry->next = saved_next_entry;
        new_entry->data = data;
        entry->next = new_entry;

        return new_entry;
    }
    else
    {
        return NULL;
    }
}

void slist_remove_after(slist_entry * entry, custom_data_deleter data_deleter)
{
    slist_entry * entry_to_delete = NULL;

    entry_to_delete = entry->next;
    if ( entry_to_delete )
    {
        if ( entry_to_delete->data )
        {
            data_deleter(entry_to_delete);
        }

        entry->next = entry_to_delete->next;
        free(entry_to_delete);
    }
}

slist_entry* slist_next(slist_entry * head)
{
    return head->next;
}

slist_entry* slist_tail(slist_entry * head)
{
    slist_entry * cursor = head;
    while(cursor->next)
    {
        cursor = cursor->next;
    }

    return cursor;
}

void slist_set_data(slist_entry * entry, void * data)
{
    entry->data = data;
}

void * slist_get_data(slist_entry * entry)
{
    return entry->data;
}

unsigned slist_is_tail(slist_entry * entry)
{
    return entry->next == NULL;
}
