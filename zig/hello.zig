const print = @import("std").debug.print;
//importing print function from zig standard library

pub fn main() void {
    print("Hello, world!\n", .{});
}
