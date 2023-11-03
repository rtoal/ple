#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char team[8];   // room for 7 characters + the terminator
    char name[64];  // room for 63 characters + the terminator
    double ppg;
} Player;

int compare(const void *a, const void *b) {
    double ppg_a = ((Player*)a)->ppg;
    double ppg_b = ((Player*)b)->ppg;
    return (ppg_a < ppg_b) ? 1 : (ppg_a > ppg_b) ? -1 : 0;
}

int main() {
    Player players[1000];
    int playerCount = 0;

    char line[256];

    while (fgets(line, sizeof(line), stdin)) {
        if (strlen(line) >= sizeof(line) - 1) {
            fprintf(stderr, "Error: Line too long\n");
            return -1;
        }

        char team[8], name[64];
        int games, points;
        if (sscanf(line, "%7[^,],%63[^,],%d,%d", 
                team, name, &games, &points) != 4) {
            fprintf(stderr, "Error: Invalid input line format\n");
            return -2;
        }
        if (games < 15) continue;
        if (playerCount >= sizeof players / sizeof(Player)) {
            fprintf(stderr, "Error: Too many players\n");
            return -3;
        }
        Player* player = &players[playerCount];
        strlcpy(player->team, team, sizeof player->team);
        strlcpy(player->name, name, sizeof player->name);
        player->ppg = (double)points / games;
        playerCount++;
    }

    qsort(players, playerCount, sizeof(Player), compare);

    int printedPlayerCount = playerCount < 10 ? playerCount : 10;
    for (int i = 0; i < printedPlayerCount; i++) {
        printf("%-22s%-4s%8.2lf\n", players[i].name, players[i].team,
            players[i].ppg);
    }

    return EXIT_SUCCESS;
}
