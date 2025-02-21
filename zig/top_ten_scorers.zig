const std = @import("std");
const reader = std.io.getStdIn().reader();
const stdout = std.io.getStdOut().writer();
const allocator = std.heap.page_allocator;

const Player = struct {
    name: []const u8,
    team: []const u8,
    ppg: f64,
};

pub fn main() !void {
    var players = std.ArrayList(Player).init(allocator);

    var buf: [1000]u8 = undefined;
    while (try reader.readUntilDelimiterOrEof(&buf, '\n')) |line| {
        const fields = splitByComma(line);
        const games = std.fmt.parseInt(i32, fields[2], 10) catch continue;
        const points = std.fmt.parseInt(i32, fields[3], 10) catch continue;

        if (games < 15) {
            continue;
        }

        try players.append(Player{
            .name = try allocator.dupe(u8, fields[1]),
            .team = try allocator.dupe(u8, fields[0]),
            .ppg = @as(f64, @floatFromInt(points)) / @as(f64, @floatFromInt(games)),
        });
    }

    std.mem.sort(Player, players.items, {}, compareByPPG);
    const count = @min(10, players.items.len);
    for (players.items[0..count]) |player| {
        try stdout.print("{s:<22}{s:<4}{d:8.2}\n", .{ player.name, player.team, player.ppg });
    }
}

fn splitByComma(line: []const u8) []const []const u8 {
    var parts = std.ArrayList([]const u8).init(std.heap.page_allocator);
    var it = std.mem.splitScalar(u8, line, ',');
    while (it.next()) |part| {
        parts.append(part) catch {};
    }
    return parts.items;
}

fn compareByPPG(context: void, a: Player, b: Player) bool {
    _ = context;
    return a.ppg > b.ppg;
}
