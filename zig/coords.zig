const std = @import("std");
const stdout = std.io.getStdOut().writer();

fn showCoordinates(x: i32, y: i32, z: i32) void {
    stdout.print("Got: x = {}, y = {}, z = {}\n", .{ x, y, z }) catch {
        std.debug.panic("{s}\n", .{"Failed to print"});
    };
}

pub fn main() void {
    showCoordinates(5, 8, 3);
}
