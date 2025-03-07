import ballerina/test;

function sumOfEvenSquares(int[] nums) returns int {
    return from int n in nums
           where n % 2 == 0
           let int squared = n * n
           collect sum(squared);
}

public function main() {
    test:assertExactEquals(sumOfEvenSquares([]), 0, msg = "Assertion Failed: Expected output does not equal to actual output.");
    test:assertExactEquals(sumOfEvenSquares([1]), 0, msg = "Assertion Failed: Expected output does not equal to actual output.");
    test:assertExactEquals(sumOfEvenSquares([1,2]), 4, msg = "Assertion Failed: Expected output does not equal to actual output.");
    test:assertExactEquals(sumOfEvenSquares([1,2,3]), 4, msg = "Assertion Failed: Expected output does not equal to actual output.");
    test:assertExactEquals(sumOfEvenSquares([1,2,3,4]), 20, msg = "Assertion Failed: Expected output does not equal to actual output.");
    test:assertExactEquals(sumOfEvenSquares([4,6,7,2]), 56, msg = "Assertion Failed: Expected output does not equal to actual output.");
}