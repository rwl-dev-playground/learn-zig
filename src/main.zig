const std = @import("std");
const userImports = @import("model/user.zig");
const User = userImports.User;
const MAX_POWER = userImports.MAX_POWER;

// This code won't compile if `main` isn't `pub` (public)
pub fn main() void {
    const a: [5]i32 = .{ 1, 2, 3, 4, 5 };
    var end: usize = 4;
    const b = a[1..end];
    std.debug.print("{any}\n", .{@TypeOf(b)});
    const c = [3:false]bool{ false, true, false };
    std.debug.print("{any}\n", .{std.mem.asBytes(&c).*});

    const user = User.init("Goku", 800 + User.SUPER_POWER);

    std.debug.print("{s}'s power is {d}\n", .{ user.name, user.power });
    User.diagnose(user);
}
