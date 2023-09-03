const std = @import("std");
const versions = @import("versions.zig");

pub const Command = enum {
    List,
    Install,
    Use,
    Default,
    Unknown,
};

pub fn handleCommands(cmd: Command, params: ?[]const u8) !void {
    std.debug.print("Handling command: {}\n", .{cmd});
    switch (cmd) {
        Command.List => {
            try handleList();
        },
        Command.Install => {
            try installVersion(params);
        },
        Command.Use => {
            try useVersion();
        },
        Command.Default => {
            try setDefault();
        },
        Command.Unknown => {
            try handleUnknown();
        },
    }
}

fn handleList() !void {
    var allocator = std.heap.page_allocator;
    const versionsList = try versions.list(allocator);
    defer versionsList.deinit();
    for (versionsList.items) |version| {
        std.debug.print("{s}\n", .{version});
    }
}

fn installVersion(params: ?[]const u8) !void {
    if (params) |version| {
        std.debug.print("Installing version: {s}\n", .{version});
        // Your install code here
    } else {
        std.debug.print("Please specify a version to install.\n", .{});
    }
}

fn useVersion() !void {
    std.debug.print("Handling 'use' command.\n", .{});
    // Your use code here
}

fn setDefault() !void {
    std.debug.print("Handling 'default' command.\n", .{});
    // Your default code here
}

fn handleUnknown() !void {
    std.debug.print("Unknown command. Use '--help' for usage information.\n", .{});
}
