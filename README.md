# zvm - Zig Version Manager
⚡ Fast and simple zig version manager

`zvm` is a command-line tool that allows you to easily install, manage, and switch between multiple versions of Zig.

![Demo GIF or Screenshot](path/to/demo_or_screenshot.gif)

## Features

- List available Zig versions.
- Install specific Zig versions.
- Switch between installed Zig versions.
- Set a default Zig version.

## Installation

1. Clone this repository:
```bash
   git clone https://github.com/hendriknielaender/zvm.git
```

1. Navigate to the cloned directory and build the project:
```bash
  cd zvm
  zig build
```

## Usage
```bash
zvm list                # List all available Zig versions
zvm install <version>   # Install a specified Zig version
zvm use <version>       # Switch to a specified Zig version for the current session
zvm default <version>   # Set a specified version as the default
zvm current             # Display the currently active Zig version
```
