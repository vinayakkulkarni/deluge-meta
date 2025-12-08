# deluge-meta

A Homebrew tap for installing Deluge 2.0 on macOS.

> **Note**: This is a fork of [amar1729/homebrew-deluge-meta](https://github.com/amar1729/homebrew-deluge-meta) with updated dependencies to fix the `six` library issue that was disabled in Homebrew core.

This tap provides a working build for Deluge 2.0 to reduce the troubles with building and linking Deluge's pip module on Mac.

## Changes from the Original

- **Removed `six` as a Homebrew dependency** - The `six` formula was disabled in Homebrew core on 2025-10-16. This fork includes `six` as a pip resource instead.
- Updated for compatibility with current Homebrew formulae

## Installation

```bash
brew install vinayakkulkarni/deluge-meta/deluge-meta
```

Or tap first, then install:

```bash
brew tap vinayakkulkarni/deluge-meta
brew install deluge-meta
```

## What's Included

After installation, you'll have access to:

- `deluge` - The main Deluge client
- `deluge-gtk` - GTK GUI for Deluge
- `deluge-web` - Web UI for Deluge
- `deluge-console` - Console interface for Deluge
- `deluged` - Deluge daemon

## Running as a Service

You can run the Deluge daemon as a background service:

```bash
brew services start deluge-meta
```

Logs are stored in `$(brew --prefix)/var/log/deluge-meta/`.

## Troubleshooting

If you encounter issues:

1. Make sure you have the latest Homebrew:
   ```bash
   brew update
   ```

2. Try reinstalling with verbose output:
   ```bash
   brew reinstall -v vinayakkulkarni/deluge-meta/deluge-meta
   ```

## Credits

- Original tap by [Amar1729](https://github.com/amar1729)
- Based on the official [Deluge documentation](https://deluge.readthedocs.io/en/latest/intro/01-install.html)
- Forum reference: [Deluge Forums Thread](https://forum.deluge-torrent.org/viewtopic.php?t=55393&start=10)

## Documentation

For more Homebrew help: `brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
