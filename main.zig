const std = @import("std");

const termbox = @cImport({
    @cInclude("termbox2.h");
});

const c = @cImport({
    @cInclude("time.h");
    @cInclude("signal.h");
});

const bigclock = @import("bigclock.zig");

var should_quit = false;

fn signal_handler(sig: c_int) callconv(.C) void {
    _ = sig;
    should_quit = true;
}

pub fn main() !void {
    _ = c.signal(c.SIGINT, signal_handler);
    _ = termbox.tb_init();
    defer _ = termbox.tb_shutdown();

    while (!should_quit) {
        _ = termbox.tb_clear();

        var raw: c.time_t = c.time(null);
        const tm = c.localtime(&raw).*;

        var buf: [8]u8 = undefined;
        const hour = if (tm.tm_hour < 0) 0 else @as(u32, @intCast(tm.tm_hour));
        const min = if (tm.tm_min < 0) 0 else @as(u32, @intCast(tm.tm_min));
        const time_str = try std.fmt.bufPrint(&buf, "{:0>2}:{:0>2}", .{ hour, min });
        //const time_str = try std.fmt.bufPrint(&buf, "{:0>2}:{:0>2}", .{ tm.tm_hour, tm.tm_min });
        const width = termbox.tb_width();
        const start_x = (@as(usize, @intCast(width)) - bigclock.WIDTH) * 10 / 33;

        // var x: usize = 2;
        var x: usize = start_x;
        for (time_str) |ch| {
            if (ch == ':') {
                x += 1; // Add 1 spacing before colon
            }
            const cells = bigclock.clockCell(ch, termbox.TB_WHITE, termbox.TB_BLACK, .en);
            bigclock.alphaBlit(x, 1, @intCast(width), @intCast(termbox.tb_height()), cells);
            if (ch == ':') {
                if (tm.tm_min >= 10 and tm.tm_min < 20) {
                 x += 3; // Tight spacing after colon when the following number is 1
                } else {
                    x += 6;
                }
            } else {
                x += bigclock.WIDTH + 1;
            }
        }

        _ = termbox.tb_present();
        
        // Check for keyboard events with timeout
        var event: termbox.tb_event = undefined;
        const ret = termbox.tb_peek_event(&event, 1000); // 1 second timeout
        if (ret == termbox.TB_OK and event.type == termbox.TB_EVENT_KEY) {
            if (event.key == termbox.TB_KEY_ESC or event.key == termbox.TB_KEY_CTRL_C) {
                break;
            }
        }
    }
}
