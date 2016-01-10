package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"regexp"
	"sort"
	"strings"
)

func main() {
	if bytes, err := ioutil.ReadAll(os.Stdin); err != nil {
		panic(err)
	} else {
		counts := make(map[string]int)
		r := regexp.MustCompile(`[a-z\']+`)
		for _, word := range r.FindAllString(strings.ToLower(string(bytes)), -1) {
			counts[word] += 1
		}
		report(counts)
	}
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
