const stdout = @import("std").io.getStdOut().writer();

pub fn main() !void {
    for (0..11) |i| {
        const t = (43200 * i + 21600) / 11;
        const h = t / 3600;
        const m = t / 60 % 60;
        const s = t % 60;
        try stdout.print("{d:0>2}:{d:0>2}:{d:0>2}\n", .{ if (h == 0) 12 else h, m, s });
    }
}
