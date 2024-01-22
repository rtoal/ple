package main
import "core:fmt"
import "core:os"
import "core:strings"
permutations :: proc(arr: []rune, n: int) {
    if n == 0 {
        builder := strings.builder_make()
        for r, _ in arr {
            strings.write_encoded_rune(&builder, r, false)
        }
        fmt.println(strings.to_string(builder))
    } else {
        for i := 0; i < n; i += 1 {
            permutations(arr, n-1)
            j := i
            if n % 2 == 0 {
                j = 0
            } else {
                j = i
            }
            arr[j], arr[n] = arr[n], arr[j]
        }
        permutations(arr, n-1)
    }
}
main :: proc() {
    args := os.args;
    if len(args) != 2 {
        fmt.println("Usage: <./permutations.exe or ./permutations> <string>")
        return
    }
    input_string := args[1]
    arr := make([]rune, len(input_string))
    for codepoint, index in input_string {
        arr[index] = codepoint
    }
    permutations(arr, len(input_string)-1)
}
