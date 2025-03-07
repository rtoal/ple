import ballerina/io;

function printPermutations(string[] a, int n) {
    if n <= 0 {
        io:println(string:'join("\t", ...a));
    } else {
        foreach int i in 0 ..< n {
            printPermutations(a, n-1);
            int j = (n % 2 == 0) ? 0 : i;
            string temp = a[j];
            a[j] = a[n];
            a[n] = temp;
        }
        printPermutations(a, n-1);
    }
}

public function main(string[] input) returns error? {
    if input.length() < 1 {
        return error("ERROR: There must be at least 1 argument.");
    }
    printPermutations(input, input.length()-1);
}