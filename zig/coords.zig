const std = @import("std");
//importing standard zig library
const print = std.debug.print;

fn coord(x: i32, y: i32, z: i32) void {
    //the coord function is taking three i32 arguments, and the return type is void
    print("The coordinates are: x = {}, y = {}, z = {}\n", .{ x, y, z });
}

pub fn main() void {
    coord(20, 40, 0);
}
