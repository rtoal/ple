var stdout = @import("std").io.getStdOut().writer();

pub fn main() !void {
    const number: i32 = 21;

    if (number % 2 == 0) {
        try stdout.print("The number {} is even\n", .{number});
    } else {
        try stdout.print("The number {} is odd\n", .{number});
    }
}
