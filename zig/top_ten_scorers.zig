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

    // Dynamically allocated array of players
    var players = std.ArrayList(Player).init(allocator);

    // Read lines from stdin
    var line: []u8 = undefined;
    while (reader.readUntilDelimiterOrEof(&line, '\n') catch return) {
        // Split line by commas
        const fields = splitByComma(line);
        if (fields.len != 4) {
            continue; // Skip invalid lines
        }

        // Parse games and points
        const games = std.fmt.parseInt(i32, fields[2], 10) catch continue;
        const points = std.fmt.parseInt(i32, fields[3], 10) catch continue;

        if (games < 15) {
            continue; // Ignore players with fewer than 15 games
        }

        // Create a player and add to list
        const ppg = f64(points) / f64(games);
        try players.append(Player{
            .name = fields[1],
            .team = fields[0],
            .ppg = ppg,
        });
    }

    // Sort players by ppg in descending order
    std.sort.sort(players.items, cmpPPG);

    // Print top 10 players
    const count = std.math.min(10, players.items.len);
    for (players.items[0..count]) |player| {
        try std.debug.print("{:22}{:4}{:8.2}\n", .{ player.name, player.team, player.ppg });
    }
}

// Split the input line by commas
fn splitByComma(line: []const u8) []const []const u8 {
    var parts = std.ArrayList([]const u8).init(std.heap.page_allocator);

    // Use splitScalar to split by comma
    var it = std.mem.splitScalar(u8, line, ',');
    while (it.next()) |part| {
        try parts.append(part);
    }

    return parts.items;
}

// Compare function for sorting players by ppg
fn cmpPPG(a: *Player, b: *Player) i32 {
    if (a.ppg > b.ppg) {
        return 1;
    } else if (a.ppg < b.ppg) {
        return -1;
    } else {
        return 0;
    }
}
