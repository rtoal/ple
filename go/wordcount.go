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
	substrings := strings.Fields(s)
	counts := make(map[string]int)

	for _, word := range substrings {
		if w := r.FindString(word); w != "" {
			if _, ok := counts[w]; ok {
				counts[w] += 1
			} else {
				counts[w] = 1
			}
		}
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
