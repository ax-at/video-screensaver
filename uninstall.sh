#!/bin/bash
# Video Screensaver Uninstallation Script (Bash Version)

set -e

echo "Uninstalling Video Screensaver..."
echo ""

# Stop the daemon if it's running
if pgrep -x "video-screensaver" > /dev/null; then
    echo "Stopping video-screensaver..."
    pkill -x "video-screensaver" || true
fi

# Restore GNOME shortcuts (in case they're still disabled)
echo "Restoring GNOME shortcuts..."
if [ -x /usr/local/bin/video-screensaver-restore-shortcuts ]; then
    /usr/local/bin/video-screensaver-restore-shortcuts 2>/dev/null || true
fi

# Remove binaries
echo "Removing binaries..."
sudo rm -f /usr/local/bin/video-screensaver
sudo rm -f /usr/local/bin/video-screensaver-restore-shortcuts

# Remove autostart entry
echo "Removing autostart entry..."
rm -f ~/.config/autostart/video-screensaver-daemon.desktop

# Ask about configuration removal
echo ""
read -p "Do you want to remove the configuration directory (~/.config/video-screensaver)? [y/N] " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Removing configuration directory..."
    rm -rf ~/.config/video-screensaver
    echo "Configuration removed."
else
    echo "Configuration preserved at ~/.config/video-screensaver"
fi

echo ""
echo "========================================"
echo "Uninstallation complete!"
echo "========================================"
echo ""
echo "Video Screensaver has been removed from your system."
echo ""
if [ -d ~/.config/video-screensaver ]; then
    echo "Your configuration has been preserved at:"
    echo "  ~/.config/video-screensaver/"
fi
echo ""
echo "========================================"
