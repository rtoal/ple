#include <stdbool.h>
#define MAX_CAPACITY 4096

// Make the representation of the stack unknown to code that uses it.
// The type stack is a pointer to a struct that is defined elsewhere.
typedef struct _Stack* stack;

typedef enum {
  no_error,
  illegal_stack_capacity,
  out_of_memory,
  stack_full,
  stack_empty
} response_code;

// Result object for operations returning a stack. If an error
// occurs, the stack field will be NULL.
typedef struct {
    response_code code;
    stack stack;
} stack_response;

// Result object for operations returning a stack item. If an error
// occurs, the item field will be NULL.
typedef struct {
    response_code code;
    int item;
} item_response;

stack_response create(int capacity); // Must destroy() returned stack
int size(const stack s);
bool is_empty(const stack s);
bool is_full(const stack s);
response_code push(stack s, int item);
item_response pop(stack s);
void destroy(stack* s);
