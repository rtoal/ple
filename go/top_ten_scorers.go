package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"sort"
	"strconv"
)

type Player struct {
	name string
	team string
	ppg  float64
}

func main() {
	players := make([]Player, 0)
	scanner := bufio.NewScanner(os.Stdin)
	re := regexp.MustCompile(`([^,]+),([^,]+),(\d+),(\d+)`)
	for scanner.Scan() {
		match := re.FindStringSubmatch(scanner.Text())
		games, _ := strconv.Atoi(match[3])
		points, _ := strconv.Atoi(match[4])
		if games >= 15 {
			ppg := float64(points) / float64(games)
			player := Player{match[2], match[1], ppg}
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
