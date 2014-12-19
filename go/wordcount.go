package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"sort"
	"strings"
)

func WordCount(s string) map[string]int {
	substrings := strings.Fields(s)
	counts := make(map[string]int)

	for _, word := range substrings {
		if _, ok := counts[word]; ok {
			counts[word] += 1
		} else {
			counts[word] = 1
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
			fmt.Printf("%s %d\n", word, m[word])
		}
	}
}
