#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

typedef struct _node_t_ {
    char *string;
    int count;
    struct _node_t_ *next;
} node_t;

typedef struct _hash_table_t_ {
    int size;
    node_t **table;
} hash_table_t;

hash_table_t* create_hash_table (int size) {
    hash_table_t *new_table;

    if (size < 1)
        return NULL;

    if ((new_table = malloc(sizeof(hash_table_t))) == NULL)
        return NULL;

    if ((new_table->table = malloc(sizeof(node_t*) * size)) == NULL)
        return NULL;

    for (int i = 0; i < size; i++)
        new_table->table[i] = NULL;


    new_table->size = size;

    return new_table;
}

/*
  Generates a hash for the string between 0 and max.
  Uses the Fowler–Noll–Vo hash function: http://en.wikipedia.org/wiki/Fowler–Noll–Vo_hash_function
*/
int hash_string (const char* str, int max) {
    const uint64_t FNV_offset_basis = 0xcbf29ce484222325;
    const uint64_t FNV_prime = 0x100000001b3;
    uint64_t hash = FNV_offset_basis;
    while (str*) {
        hash *= FNV_prime;
        hash = hash ^ str*;
        str++;
    }
    return hash % max;
}

/*
  Looks up a string, and returns a pointer to the count if it is found, else, it returns NULL
*/
int* lookup_val (const char* str, hash_table_t* ht) {
    int str_hash = hash_string(str, ht->size);

    node_t *n = ht->table[str_hash];
    while (n != NULL) {
        if (strcmp(str, n->string))
            return &n->count;

        n = n->next;
    }

    return NULL;
}
