const std = @import("std");

fn printPermutations(a: []u8, n: usize) void {
    if (n <= 0) {
        std.debug.print("{s}\n", .{a});
    } else {
        var i: usize = 0;
        while (i < n) : (i += 1) {
            printPermutations(a, n - 1);
            const j = if (n % 2 == 0) 0 else i;

            const old_a_j = a[j];
            a[j] = a[n];
            a[n] = old_a_j;
        }
        printPermutations(a, n - 1);
    }
}

pub fn main() anyerror!void {
    const args = try std.process.argsAlloc(std.heap.page_allocator);
    defer std.process.argsFree(std.heap.page_allocator, args);

    // Skip the first argument which is the program's own path
    const start_index: usize = 1;
    const end_index: usize = args.len;

    if (end_index >= start_index) {
        var buffer: [100]u8 = undefined;
        var a: []u8 = buffer[0 .. end_index - start_index];

        // Copy the arguments to the buffer
        for (start_index..end_index) |i| {
            a[i - start_index] = args[i][0];
        }

        // Calculate and print the permutations
        printPermutations(a, a.len - 1);
    }
}
