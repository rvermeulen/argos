#ifndef _ARGOS_UTILITY
#define _ARGOS_UTILITY

typedef struct _slist_entry
{
    struct _slist_entry * next;
    void * data;
} slist_entry;

typedef void (*custom_data_deleter)(void * data);

slist_entry* slist_create();
void slist_destroy(slist_entry * head, custom_data_deleter data_deleter);

slist_entry* slist_add_after(slist_entry * entry, void * data);
void slist_remove_after(slist_entry * entry, custom_data_deleter data_deleter);


slist_entry* slist_next(slist_entry * head);
slist_entry* slist_tail(slist_entry * head);

void slist_set_data(slist_entry * entry, void * data);
void * slist_get_data(slist_entry * entry);
unsigned slist_is_tail(slist_entry * entry);
unsigned slist_contains_data(slist_entry * entry);
#endif
