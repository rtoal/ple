#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include "hashmap.c"

#define READ_BUF_LEN 512
#define HASHMAP_SIZE 1024

void to_lower_case (char *str) {
    while (*str) {
        *str = tolower(*str);
        str++;
    }
}

int main(int argc, char const *argv[]) {
    char* read_buf = malloc(READ_BUF_LEN);
    hashmap_t *hm = create_hash_map(HASHMAP_SIZE);

    int result = scanf("%511[a-z|A-Z|']", read_buf);
    int *count;
    while (result != EOF) {
        if (result == 1) {
            to_lower_case(read_buf);

            count = lookup_val(read_buf, hm);
            if (count != NULL) {
                *count = *count + 1;
            } else {
                add_val(read_buf, 1, hm);
            }
        } else if (result == 0) {
            scanf("%511[^a-z|A-Z|']", read_buf);
        }

        result = scanf("%511[a-z|A-Z|']", read_buf);
    }

    node_t **words = to_sorted_array(hm);
    for (int i = 0; i < hm->size; i++) {
        printf("%s %d\n", words[i]->string, words[i]->count);
    }

    return 0;
}
