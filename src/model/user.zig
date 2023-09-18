const std = @import("std");

pub const MAX_POWER = 10_000;

pub const User = struct {
    name: []const u8,
    power: u64 = 5,

    pub const SUPER_POWER = 9_000;

    pub fn init(name: []const u8, power: u64) User {
        return .{
            .name = name,
            .power = power,
        };
    }

    pub fn diagnose(user: User) void {
        if (user.power >= SUPER_POWER) {
            std.debug.print("It's over {d}!!!\n", .{SUPER_POWER});
        }
    }
};
