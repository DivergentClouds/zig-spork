// This example programs demonstrates that spork.Attribute can also be used
// stand-alone without using spork.Term.

const std = @import("std");
const io = std.io;

const spork = @import("spork");

const red = spork.Attribute{ .fg = .red, .italic = true };
const green = spork.Attribute{ .fg = .green, .blinking = true };
const blue = spork.Attribute{ .fg = .blue, .bold = true };
const cyan = spork.Attribute{ .fg = .cyan, .reverse = true };
const parsed = spork.Attribute.Colour.fromDescription("magenta") catch
    @compileError("bad colour description");
const magenta = spork.Attribute{ .fg = parsed, .dimmed = true };
const reset = spork.Attribute{};

pub fn main() !void {
    const writer = io.getStdOut().writer();

    try red.dump(writer);
    try writer.writeAll("foo ");
    try green.dump(writer);
    try writer.writeAll("bar ");
    try blue.dump(writer);
    try writer.writeAll("baz ");
    try magenta.dump(writer);
    try writer.writeAll("zig ");
    try cyan.dump(writer);
    try writer.writeAll("spork\n");

    try reset.dump(writer);
}
