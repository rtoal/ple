const std = @import("std");

pub fn main() !void {
    var args = std.process.args();

    while (args.next()) |arg| {
        try std.io.getStdOut().writer().print("{s}\n", .{arg});
    }
}
