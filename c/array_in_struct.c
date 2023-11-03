#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

typedef struct { int turn; int diceRolls[2]; } player;

int main() {
    player alice = { 1, { 6, 6 } };
    player bob = { 2, { 5, 3 } };

    alice = bob;                   // ok, copies all 12 bytes
    alice.diceRolls[1] = 1;        // also ok!
    assert(bob.diceRolls[1] == 3); // unchanged! Array was copied
    // bob.diceRolls = { 1, 2 };   // NOT ok
    return EXIT_SUCCESS;
}
