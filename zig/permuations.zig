const std = @import("std");

fn printArray(a: []const []const u8) !void {
    var writer = std.io.getStdOut().writer();
    for (a, 0..) |item, i| {
        try writer.writeAll(item);
        if (i < a.len - 1) {
            try writer.writeAll("\t");
        }
    }
    try writer.writeAll("\n");
}

fn printPermutations(a: [][]u8, n: usize) !void {
    if (n == 0) {
        try printArray(a);
        return;
    }

    try printPermutations(a, n - 1);

    var i: usize = 0;
    while (i < n) : (i += 1) {
        const j: usize = if (n % 2 == 0) 0 else i;
        std.mem.swap([]const u8, &a[j], &a[n]);
        try printPermutations(a, n - 1);
    }
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    var args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);
    const a = try allocator.dupe([]u8, args[1..]);
    defer allocator.free(a);

    try printPermutations(a, a.len - 1);
}
