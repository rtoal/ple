const std = @import("std");
const print = std.debug.print;

fn coord(x: i32, y: i32, z: i32) void {
    print("The coordinates are: x = {}, y = {}, z = {}\n", .{ x, y, z });
}

pub fn main() void {
    coord(20, 40, 0);
}
