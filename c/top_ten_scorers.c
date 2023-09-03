#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char team[50];
    char name[50];
    int games;
    int points;
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
            fprintf(stderr, "Line too long. Exiting.\n");
            return -1;
        }

        char team[50], name[50];
        int games, points;
        if (sscanf(line, "%49[^,],%49[^,],%d,%d", team, name, &games, &points) != 4) {
            fprintf(stderr, "Invalid input format. Exiting.\n");
            return -2;
        }
        if (games >= 15) {
            if (playerCount >= 1000) {
                fprintf(stderr, "Too many players. Exiting.\n");
                return -3;
            }
            strcpy(players[playerCount].team, team);
            strcpy(players[playerCount].name, name);
            players[playerCount].games = games;
            players[playerCount].points = points;
            players[playerCount].ppg = (double)points / games;
            playerCount++;
        }
    }

    qsort(players, playerCount, sizeof(Player), compare);

    int numPlayersToPrint = playerCount < 10 ? playerCount : 10;
    for (int i = 0; i < numPlayersToPrint; i++) {
        Player player = players[i];
        printf("%-22s%-4s%8.2lf\n", player.name, player.team, player.ppg);
    }

    return 0;
}
