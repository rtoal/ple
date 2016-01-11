package main

import (
	"fmt"
	"bufio"
	"os"
	"regexp"
	"sort"
	"strings"
)

func main() {
	counts := make(map[string]int)
	scanner := bufio.NewScanner(os.Stdin)
	r := regexp.MustCompile(`[a-z\']+`)
	for scanner.Scan() {
		line := strings.ToLower(scanner.Text())
		for _, word := range r.FindAllString(line, -1) {
			counts[word] += 1
		}
	}
	report(counts)
}

func report(counts map[string]int) {
	var words []string
	for word := range counts {
		words = append(words, word)
	}
	sort.Strings(words)
	for _, word := range words {
		fmt.Println(word, counts[word])
	}
}
