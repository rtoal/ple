const std = @import("std");
const math = @import("std").math;
const print = std.debug.print;

pub fn main() void {
    const limit: usize = 40;
    for (1..limit) |a| {
        for (a..limit) |b| {
            const c_squared: usize = a * a + b * b;
            const c: usize = @intCast(math.sqrt(c_squared));

            if (a * a + b * b == c * c and c <= limit) {
                print("{}, {}, {}\n", .{ a, b, c });
            }
        }
    }
}
