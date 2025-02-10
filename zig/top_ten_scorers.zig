const std = @import("std");
const Allocator = std.mem.Allocator;

const Player = struct {
    name: []const u8,
    team: []const u8,
    ppg: f64,
};

pub fn main() !void {
    const allocator = std.heap.page_allocator;
    const reader = std.io.getStdIn().reader();

    var players = std.ArrayList(Player).init(allocator);

    var buf: [1000]u8 = undefined;
    while (try reader.readUntilDelimiterOrEof(&buf, '\n')) |line| {
        const fields = splitByComma(line);
        // if (fields.len != 4) {
        //     continue;
        // }

        const games = std.fmt.parseInt(i32, fields[2], 10) catch continue;
        const points = std.fmt.parseInt(i32, fields[3], 10) catch continue;

        if (games < 15) {
            continue;
        }

        try players.append(Player{
            .name = fields[1],
            .team = fields[0],
            .ppg = @as(f64, @floatFromInt(points)) / @as(f64, @floatFromInt(games)),
        });
    }

    std.mem.sort(Player, players.items, {}, compareByPPG);
    const count = @min(10, players.items.len);
    for (players.items[0..count]) |player| {
        std.debug.print("{s:<22}{s:<4}{d:8.2}\n", .{ player.name, player.team, player.ppg });
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
