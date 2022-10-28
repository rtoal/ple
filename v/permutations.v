import os

fn generate_permutations(mut a []rune, n int) string {
	if n == 0 {
		println(a.string())
	}
	else {
		for i := 0; i < n; i += 1 {
			generate_permutations(mut a, n - 1)
			j := if n % 2 == 0 { 0 } else { i }
			temp := a[j]
			a[j] = a[n]
			a[n] = temp
		}
		generate_permutations(mut a, n - 1)
	}
	return ""
}

fn main() {
	mut arr := os.args.clone()[1..].join("").runes()
	if arr.len < 1 {
		println('${error("Exactly one argument is required\n")}')
		exit(1)
	}
	generate_permutations(mut arr, arr.len - 1)
}
