const interop = @import("interop.zig");
const Bigclock = @import("enums.zig").Bigclock;
const Lang = @import("bigclock/Lang.zig");
const en = @import("bigclock/en.zig");
const Cell = @import("tui/Cell.zig").Cell;

pub const WIDTH = Lang.WIDTH;
pub const HEIGHT = Lang.HEIGHT;
pub const SIZE = Lang.SIZE;

pub fn clockCell(char: u8, fg: u16, bg: u16, bigclock: Bigclock) [SIZE]Cell {
    var cells: [SIZE]Cell = undefined;

    const clock_chars = toBigNumber(char, bigclock);
    for (0..cells.len) |i| cells[i] = Cell{
        .ch = @intCast(clock_chars[i]),
        .fg = fg,
        .bg = bg,
    };

    return cells;
}

pub fn alphaBlit(x: usize, y: usize, tb_width: usize, tb_height: usize, cells: [SIZE]Cell) void {
    if (x + WIDTH >= tb_width or y + HEIGHT >= tb_height) return;

    for (0..HEIGHT) |yy| {
        for (0..WIDTH) |xx| {
            const cell = cells[yy * WIDTH + xx];
            cell.put(x + xx, y + yy);
        }
    }
}

fn toBigNumber(char: u8, bigclock: Bigclock) [SIZE]u21 {
    const locale_chars = switch (bigclock) {
        .en => en.locale_chars,
        .none => unreachable,
    };
    return switch (char) {
        '0' => locale_chars.ZERO,
        '1' => locale_chars.ONE,
        '2' => locale_chars.TWO,
        '3' => locale_chars.THREE,
        '4' => locale_chars.FOUR,
        '5' => locale_chars.FIVE,
        '6' => locale_chars.SIX,
        '7' => locale_chars.SEVEN,
        '8' => locale_chars.EIGHT,
        '9' => locale_chars.NINE,
        ':' => locale_chars.S,
        else => locale_chars.E,
    };
}
