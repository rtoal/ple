package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"regexp"
	"sort"
	"strings"
)

func WordCount(s string) map[string]int {
	r := regexp.MustCompile(`[a-z\']+`)
	counts := make(map[string]int)

	for _, word := range r.FindAllString(strings.ToLower(s), -1) {
		counts[word] += 1
	}

	return counts
}

func main() {
	if bytes, err := ioutil.ReadAll(os.Stdin); err != nil {
		panic(err)
	} else {
		m := WordCount(string(bytes))
		var words []string
		for word := range m {
			words = append(words, word)
		}
		sort.Strings(words)

		for _, word := range words {
			fmt.Println(word, m[word])
		}
	}
}
