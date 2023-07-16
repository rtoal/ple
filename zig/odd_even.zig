const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const number: i32 = 21;

    if (number % 2 == 0) {
        print("The number {} is even\n", .{number});
    } else {
        print("The number {} is odd\n", .{number});
    }
}
