#!/bin/bash
# Video Screensaver Installation Script (Bash Version)

set -e

echo "Installing Video Screensaver..."

# Install the main script
echo "Installing video-screensaver to /usr/local/bin/..."
sudo cp video-screensaver /usr/local/bin/
sudo chmod +x /usr/local/bin/video-screensaver

# Install the restore script (for emergency recovery)
echo "Installing restore-shortcuts to /usr/local/bin/..."
sudo cp restore-shortcuts.sh /usr/local/bin/video-screensaver-restore-shortcuts
sudo chmod +x /usr/local/bin/video-screensaver-restore-shortcuts

# Install configuration file
mkdir -p ~/.config/video-screensaver
if [ ! -f ~/.config/video-screensaver/config.conf ]; then
    cp config/default.conf ~/.config/video-screensaver/config.conf
    echo "Installed default configuration to ~/.config/video-screensaver/config.conf"
else
    echo "Configuration file already exists, skipping (preserving your settings)"
fi

# Install autostart
mkdir -p ~/.config/autostart
cat > ~/.config/autostart/video-screensaver-daemon.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=Video Screensaver Daemon
Exec=/usr/local/bin/video-screensaver
X-GNOME-Autostart-enabled=true
EOF

echo ""
echo "========================================"
echo "Installation complete!"
echo "========================================"
echo ""
echo "IMPORTANT: Before starting the daemon, you must configure a video file!"
echo ""
echo "Configuration:"
echo "  Location: ~/.config/video-screensaver/config.conf"
echo ""
echo "Required setup:"
echo "  1. Edit ~/.config/video-screensaver/config.conf"
echo "  2. Set VIDEO_PATH to any video file mpv can play"
echo "     Example: VIDEO_PATH=\"/home/$USER/Videos/my-screensaver.mp4\""
echo ""
echo "Supported formats: Any video format mpv supports"
echo "  (.mp4, .webm, .mkv, .avi, .mov, etc.)"
echo ""
echo "Optional settings:"
echo "  EXIT_KEY_COMBO: Ctrl+Alt+c (configurable)"
echo "  IDLE_TIMEOUT_MINUTES: 5 (configurable)"
echo ""
echo "The screensaver daemon will start on your next login."
echo ""
echo "To start immediately without logging out:"
echo "  /usr/local/bin/video-screensaver"
echo ""
echo "To test the screensaver manually:"
echo "  /usr/local/bin/video-screensaver --now"
echo ""
echo "If shortcuts stop working after a crash:"
echo "  video-screensaver-restore-shortcuts"
echo ""
echo "========================================"
