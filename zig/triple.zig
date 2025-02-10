const stdout = @import("std").io.getStdOut().writer();

pub fn main() !void {
    for (1..41) |c| {
        for (1..c) |b| {
            for (1..b) |a| {
                if (a * a + b * b == c * c) {
                    try stdout.print("{}, {}, {}\n", .{ a, b, c });
                }
            }
        }
    }
}
