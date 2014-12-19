#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

typedef struct _node_ {
    char *string;
    int count;
    struct _node_ *next;
} node;

typedef struct _hash_table_ {
    int size;
    node **table;
} hash_table;

hash_table* create_hash_table (int size) {
    hash_table *new_table;

    if (size < 1)
        return NULL;

    if ((new_table = malloc(sizeof(hash_table))) == NULL)
        return NULL;

    /* Attempt to allocate memory for the table itself */
    if ((new_table->table = malloc(sizeof(node*) * size)) == NULL)
        return NULL;

    for (int i = 0; i < size; i++)
        new_table->table[i] = NULL;


    new_table->size = size;

    return new_table;
}

/*
  Generates a hash for the string between 0 and max
*/
int hash_string (char* str, int max) {
    uint64_t sum = 0;
    while (*str && str[1]) {
        sum += *(uint16_t*)str;
        str += 2;
    }

    if (str)
        sum += *str;

    return sum % max;
}
