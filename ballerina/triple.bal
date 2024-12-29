import ballerina/io;

public function main() {
    foreach int c in 1...40 {
        foreach int b in 1...c {
            foreach int a in 1...b {
                if (a * a + b * b == c * c) {
                    io:println(`${a}, ${b}, ${c}`);
                }
            }
        }
    }
}
