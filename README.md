# Video Screensaver

A customizable video screensaver for Linux that plays videos using mpv. Pure bash script—no compilation required.

## Features

- Locked screensaver (ignores all input except exit key)
- Automatic activation after idle timeout
- Fullscreen playback with looping
- GNOME integration

## Requirements

- Linux (tested on GNOME/Wayland)
- mpv (video player)
- Optional: `wmctrl`, `xdotool` (for enhanced window locking)

```bash
sudo apt install mpv wmctrl xdotool
```

## Installation

1. Run the installer:
```bash
./install.sh
```

2. Configure your video (required):
```bash
# Edit ~/.config/video-screensaver/config.conf
VIDEO_PATH="/path/to/your/video.mp4"
IDLE_TIMEOUT_MINUTES=5
EXIT_KEY_COMBO="Ctrl+Alt+c"
```

3. Test it:
```bash
video-screensaver --now
```

The daemon auto-starts on login.

## Usage

```bash
# Test immediately
video-screensaver --now

# Test with custom video
video-screensaver --now --video ~/Videos/test.mp4

# Test with custom exit key
video-screensaver --now --exit-key "ESC"

# Show help
video-screensaver --help
```

## Configuration

Edit `~/.config/video-screensaver/config.conf`:

```bash
IDLE_TIMEOUT_MINUTES=5
EXIT_KEY_COMBO="Ctrl+Alt+c"
VIDEO_PATH="/home/username/Videos/screensaver.mp4"
```

Supports any mpv-compatible video format (MP4, WebM, MKV, AVI, MOV, etc.).

## Uninstallation

```bash
./uninstall.sh
```

## Troubleshooting

**Screensaver doesn't start:**
- Verify `VIDEO_PATH` is set correctly
- Test: `mpv /path/to/your/video.mp4`
- Check logs: `tail -f ~/.cache/video-screensaver.log`

**mpv crashes:**
```bash
# Disable hardware decoding if needed
sudo sed -i 's/hwdec=vaapi/hwdec=no/' /etc/mpv/mpv.conf
```

**GNOME shortcuts stopped working after crash:**
```bash
./restore-shortcuts.sh
```
