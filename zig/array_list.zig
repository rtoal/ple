const std = @import("std");
const stdout = std.io.getStdOut().writer();

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var list = std.ArrayList(u8).init(allocator);
    defer list.deinit();
    try list.append('-');
    try list.append('-');
    try list.append('>');
    try stdout.print("{s}\n", .{list.items});
}
