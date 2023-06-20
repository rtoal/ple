#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Player {
    char name[50];
    char team[50];
    int games;
    int points;
    float ppg;
};

void addPlayer(struct Player** players, char* team, char* name, int games, int points, int* size, int* capacity) {
    if (games >= 15) {
        if (*size >= *capacity) {
            *capacity *= 2; // Double the capacity
            *players = realloc(*players, (*capacity) * sizeof(struct Player));
            if (*players == NULL) {
                printf("Memory reallocation failed.\n");
                exit(1);
            }
        }
        struct Player* player = &((*players)[*size]);
        strcpy(player->name, name);
        strcpy(player->team, team);
        player->games = games;
        player->points = points;
        player->ppg = (float)points / games;
        (*size)++;
    }
}

int comparePlayers(const void* a, const void* b) {
    const struct Player* playerA = (const struct Player*)a;
    const struct Player* playerB = (const struct Player*)b;
    return (playerB->ppg - playerA->ppg) > 0 ? 1 : -1;
}

int main() {
    int capacity = 8;
    struct Player* players = malloc(capacity * sizeof(struct Player));
    int size = 0;

    char line[100];
    while (fgets(line, sizeof(line), stdin)) {
        char team[50], name[50];
        int games, points;
        sscanf(line, "%[^,],%[^,],%d,%d", team, name, &games, &points);
        addPlayer(&players, team, name, games, points, &size, &capacity);
    }

    qsort(players, size, sizeof(struct Player), comparePlayers);

    for (int i = 0; i < size && i < 10; i++) {
        struct Player* player = &players[i];
        printf("%-22s%-4s%8.2f\n", player->name, player->team, player->ppg);
    }

    free(players);

    return 0;
}
