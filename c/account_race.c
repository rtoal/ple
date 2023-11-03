// This script illustrates race condition errors.

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

int account_one_balance = 10000;
int account_two_balance = 10000;

// A thread that makes 10000 transfers of 50 dollars
// from account_one to account_two. There are no critical
// sections here, so money can be lost.
void* account_one_to_two(void* arg) {
    for (int i = 0; i < 10000; i++) {
        account_one_balance -= 50;
        account_two_balance += 50;
    }
    return NULL;
}

// A thread that makes 10000 transfers of 50 dollars
// from account_two to account_one. There are no critical
// sections here, so money can be lost.
void* account_two_to_one(void* arg) {
    for (int i = 0; i < 1000; i++) {
        account_two_balance -= 50;
        account_one_balance += 50;
    }
    return NULL;
}

int main() {
    pthread_t t1, t2;
    pthread_create(&t1, NULL, account_one_to_two, NULL);
    pthread_create(&t2, NULL, account_two_to_one, NULL);
    pthread_join(t1, NULL);
    pthread_join(t2, NULL);
    printf("Account one balance: %d\n", account_one_balance);
    printf("Account two balance: %d\n", account_two_balance);
    return EXIT_SUCCESS;
}
