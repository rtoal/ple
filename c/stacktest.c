#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>

#include "stack.h"

int main() {

    // Failure on creation because capacity too large
    stack_response res = create(4097);
    assert(res.code == illegal_stack_capacity && res.stack == NULL);

    // Successful create (can't test out of memory though)
    res = create(3);
    assert(res.code == no_error);
    stack s = res.stack;
    assert(is_empty(s) && !is_full(s) && size(s) == 0);

    // Push until full
    response_code code = push(s, 100);
    assert(res.code == no_error);
    assert(!is_empty(s) && !is_full(s) && size(s) == 1);
    code = push(s, 200);
    assert(res.code == no_error);
    assert(!is_empty(s) && !is_full(s) && size(s) == 2);
    code = push(s, 300);
    assert(res.code == no_error);
    assert(!is_empty(s) && is_full(s) && size(s) == 3);
  
    // Push on full stack error
    code = push(s, 400);
    assert(code == stack_full);

    // Pop until empty
    item_response r = pop(s);
    assert(r.code == no_error && r.item == 300);
    r = pop(s);
    assert(r.code == no_error && r.item == 200);
    r = pop(s);
    assert(r.code == no_error && r.item == 100);
    assert(is_empty(s) && !is_full(s) && size(s) == 0);

    // Pop from empty stack
    r = pop(s);
    assert(r.code == stack_empty);

    // Destroy sets to null, not sure how to test internals
    destroy(&s);
    assert(s == NULL);
  
    printf("All tests have passed\n");
    return 0;
}
