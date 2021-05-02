package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"sort"
	"strconv"
	"strings"
)

type Player struct {
	name string
	team string
	ppg  float64
}

func main() {
	players := make([]Player, 0)
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		line := strings.Split(scanner.Text(), ",")
		if len(line) != 4 {
			log.Fatal("Malformed line")
		}
		games, err := strconv.Atoi(line[2])
		if err != nil {
			log.Fatal("Games value is malformed or out of range")
		}
		points, err := strconv.Atoi(line[3])
		if err != nil {
			log.Fatal("Points value is malformed or out of range")
		}
		if games >= 15 {
			ppg := float64(points) / float64(games)
			player := Player{line[1], line[0], ppg}
			players = append(players, player)
		}
	}
	sort.Slice(players, func(i, j int) bool {
		return players[i].ppg > players[j].ppg
	})
	for _, player := range players[:10] {
		format := "%-22s%-4s%8.2f\n"
		fmt.Printf(format, player.name, player.team, player.ppg)
	}
}
