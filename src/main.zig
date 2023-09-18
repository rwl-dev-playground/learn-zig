const std = @import("std");
const userImports = @import("model/user.zig");
const User = userImports.User;
const MAX_POWER = userImports.MAX_POWER;

// This code won't compile if `main` isn't `pub` (public)
pub fn main() void {
    const user = User.init("Goku", 800 + User.SUPER_POWER);

    std.debug.print("{s}'s power is {d}\n", .{ user.name, user.power });
    User.diagnose(user);
}
