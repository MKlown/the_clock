const interop = @import("../interop.zig");

const termbox = interop.termbox;

pub const Cell = @This();

ch: u16,
fg: u16,
bg: u16,

pub fn init(ch: u16, fg: u16, bg: u16) Cell {
    return .{
        .ch = ch,
        .fg = fg,
        .bg = bg,
    };
}

pub fn put(self: Cell, x: usize, y: usize) void {
    if (self.ch == ' ') return;
    // if (self.ch == ' ') return;

    _ = termbox.tb_set_cell(@intCast(x), @intCast(y), self.ch, self.fg, self.bg);
}
