const bufPrint = @import("std").debug.print;

pub fn main() void {
    for (0..11) |i| {
        const t = (i * 43200 + 21600) / 11;
        const h = t / 3600;
        const m = t % 3600;
        bufPrint("{d:0>2}:{d:0>2}:{d:0>2}\n", .{ if (h == 0) 12 else h, m / 60, m % 60 });
    }
}
