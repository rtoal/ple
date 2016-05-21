#include <stdlib.h>
#include <string.h>
#include <inttypes.h>
#include <stdbool.h>

typedef struct _node_t_ {
    char *string;
    int count;
    struct _node_t_ *next;
} node_t;

typedef struct _hashmap_t_ {
    int size;
    int table_size;
    node_t **table;
} hashmap_t;


hashmap_t* create_hash_map(int table_size) {
    hashmap_t *new_table;

    if (table_size < 1)
        return NULL;

    new_table = malloc(sizeof(hashmap_t));
    if (new_table == NULL) return NULL;

    new_table->table = malloc(sizeof(node_t*) * table_size);
    if (new_table->table == NULL) return NULL;

    for (int i = 0; i < table_size; i++) {
        new_table->table[i] = NULL;
    }

    new_table->table_size = table_size;

    return new_table;
}

/*
  Generates a hash for the string between 0 and max.
  Uses the Fowler–Noll–Vo hash function:
  http://en.wikipedia.org/wiki/Fowler–Noll–Vo_hash_function
*/
int hash_string(const char* str, int max) {
    const uint64_t FNV_offset_basis = 0xcbf29ce484222325;
    const uint64_t FNV_prime = 0x100000001b3;
    uint64_t hash = FNV_offset_basis;
    while (*str) {
        hash = hash ^ *str;
        hash *= FNV_prime;
        str++;
    }
    return hash % max;
}

/*
  Looks up a string, and returns a pointer to the count
  if it is found, else returns NULL.
*/
int* lookup_val(const char *str, hashmap_t* ht) {
    int str_hash = hash_string(str, ht->table_size);

    for (node_t *n = ht->table[str_hash]; n != NULL; n = n->next) {
        if (strcmp(str, n->string) == 0) {
            return &n->count;
        }
    }

    return NULL;
}

/*
  Adds a string to the hashmap. Returns a bool for success.
*/
bool add_val(const char *str, int value, hashmap_t* ht) {
    node_t *new_node = malloc(sizeof(node_t));
    if (new_node == NULL) return false;

    new_node->string = malloc(strlen(str + 1));
    if (new_node->string == NULL) return false;
    strcpy(new_node->string, str);

    new_node->count = value;

    int str_hash = hash_string(new_node->string, ht->table_size);
    new_node->next = ht->table[str_hash];
    ht->table[str_hash] = new_node;

    ht->size++;

    return true;
}

int node_compare(const void *p1, const void *p2) {
    node_t *n1 = *(node_t**)p1;
    node_t *n2 = *(node_t**)p2;
    return strcmp(n1->string, n2->string);
}

node_t** to_sorted_array(const hashmap_t* ht) {
    node_t **result = malloc(sizeof(node_t*) * ht->size);
    node_t **p = result;

    for (int i = 0; i < ht->table_size; i++) {
        node_t *n = ht->table[i];
        while (n != NULL) {
            *p++ = n;
            n = n->next;
        }
    }

    qsort(result, ht->size, sizeof(node_t*), &node_compare);

    return result;
}
