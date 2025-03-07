import ballerina/io;
import ballerina/regex;

function generatePermutations(string[] a, int n) {
    if n <= 0 {
        io:println(string:'join("", ...a));
    } else {
        foreach int i in 0 ..< n {
            generatePermutations(a, n-1);
            int j = (n % 2 == 0) ? 0 : i;
            string temp = a[j];
            a[j] = a[n];
            a[n] = temp;
        }
        generatePermutations(a, n-1);
    }
}

public function main(string[] input) returns error? {
    if input.length() != 1 {
        return error("ERROR: There must be exactly 1 argument.");
    }
    generatePermutations(regex:split(input[0], ""), input[0].length()-1);
}
