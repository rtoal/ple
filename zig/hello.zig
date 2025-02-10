var stdout = @import("std").io.getStdOut().writer();

pub fn main() !void {
    try stdout.print("{s}\n", .{"Hello, world!"});
}
