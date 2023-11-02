#include "stack.h"
#include <stdlib.h>

struct _Stack {
    int* items;      // array contents, capacity set on create()
    int capacity;    // have to store this separately!
    int top;         // index of next slot to fill, also the size
};

stack_response create(int capacity) {
    if (capacity < 1 || capacity > MAX_CAPACITY) {
      return (stack_response){illegal_stack_capacity, NULL};
    }
    stack s = malloc(sizeof(struct _Stack));
    if (s == NULL) {
      return (stack_response){out_of_memory, NULL};
    }
    s->capacity = capacity;
    s->top = 0;
    s->items = malloc(capacity * sizeof(int));
    if (s->items == NULL) {
      return (stack_response){out_of_memory, NULL};
    }
    return (stack_response){no_error, s};
}

int size(const stack s) { return s->top; }
bool is_empty(const stack s) { return s->top == 0; }
bool is_full(const stack s) { return s->top == s->capacity; }
  
response_code push(stack s, int item) {
    if (is_full(s)) {
      return stack_full;
    }
    s->items[s->top++] = item;
    return no_error;
}
  
item_response pop(stack s) {
    if (is_empty(s)) {
        return (item_response){stack_empty, 0};
    }
    int popped_value = s->items[--s->top];
    return (item_response){no_error, popped_value};
}

void destroy(stack* s) {
    // Both the array and the stack itself were malloc'd
    free((*s)->items);
    free(*s);
    *s = NULL;  // It is good practice to null a ptr after free
}
