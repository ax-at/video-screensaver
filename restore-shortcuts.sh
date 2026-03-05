#!/bin/bash
# Emergency script to restore GNOME shortcuts if screensaver exits abnormally
# Run this if your keyboard shortcuts stop working after screensaver crash

echo "Restoring GNOME keyboard shortcuts to defaults..."

# Super key (overlay-key)
gsettings reset org.gnome.mutter overlay-key 2>/dev/null || true

# Window switching
gsettings reset org.gnome.desktop.wm.keybindings switch-applications 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-applications-backward 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-windows 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-windows-backward 2>/dev/null || true

# Overview/Activities
gsettings reset org.gnome.shell.keybindings toggle-overview 2>/dev/null || true
gsettings reset org.gnome.shell.keybindings toggle-application-view 2>/dev/null || true

# Workspace switching
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-left 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-right 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-up 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-down 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-left 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-right 2>/dev/null || true

# Message tray
gsettings reset org.gnome.shell.keybindings toggle-message-tray 2>/dev/null || true

# Screenshot shortcuts
gsettings reset org.gnome.shell.keybindings screenshot 2>/dev/null || true
gsettings reset org.gnome.shell.keybindings screenshot-window 2>/dev/null || true
gsettings reset org.gnome.shell.keybindings show-screenshot-ui 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys screenshot 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys screenshot-clip 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys window-screenshot 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys window-screenshot-clip 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys area-screenshot 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys area-screenshot-clip 2>/dev/null || true

# Screen lock
gsettings reset org.gnome.settings-daemon.plugins.media-keys screensaver 2>/dev/null || true

# Logout (Ctrl+Alt+Delete)
gsettings reset org.gnome.settings-daemon.plugins.media-keys logout 2>/dev/null || true

# Focus shortcuts
gsettings reset org.gnome.shell.keybindings focus-active-notification 2>/dev/null || true

# Media/Function keys
gsettings reset org.gnome.settings-daemon.plugins.media-keys volume-up 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys volume-down 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys volume-mute 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys mic-mute 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys play 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys pause 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys stop 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys next 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys previous 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys eject 2>/dev/null || true

# Brightness keys
gsettings reset org.gnome.settings-daemon.plugins.media-keys screen-brightness-up 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys screen-brightness-down 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys keyboard-brightness-up 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys keyboard-brightness-down 2>/dev/null || true

# Other media keys
gsettings reset org.gnome.settings-daemon.plugins.media-keys www 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys home 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys search 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys email 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys calculator 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys control-center 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys help 2>/dev/null || true

# Accessibility keys
gsettings reset org.gnome.settings-daemon.plugins.media-keys magnifier 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-in 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-out 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys screenreader 2>/dev/null || true
gsettings reset org.gnome.settings-daemon.plugins.media-keys on-screen-keyboard 2>/dev/null || true

# F-key related shortcuts (F1-F12 and Alt+F combinations)
gsettings reset org.gnome.desktop.wm.keybindings activate-window-menu 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings toggle-fullscreen 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings panel-run-dialog 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings close 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings maximize 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings unmaximize 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings toggle-maximized 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings minimize 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings begin-move 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings begin-resize 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings show-desktop 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings cycle-windows 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings cycle-windows-backward 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings cycle-group 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings cycle-group-backward 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings cycle-panels 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings cycle-panels-backward 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-input-source 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-input-source-backward 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings panel-main-menu 2>/dev/null || true
gsettings reset org.gnome.shell.keybindings open-application-menu 2>/dev/null || true

# Switch to specific workspaces
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-1 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-2 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-3 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-4 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-5 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-6 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-7 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-8 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-9 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-10 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-11 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-12 2>/dev/null || true

# Move to specific workspaces
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-1 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-2 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-3 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-4 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-5 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-6 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-7 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-8 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-9 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-10 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-11 2>/dev/null || true
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-12 2>/dev/null || true

# Clean up temp files
rm -f /tmp/video-screensaver-keybindings.backup
rm -f /tmp/video-screensaver-input.conf

echo ""
echo "✓ All GNOME shortcuts restored to defaults"
echo ""
echo "The following should now work again:"
echo "  - Super key (Activities)"
echo "  - Alt+Tab (window switching)"
echo "  - Ctrl+Alt+Left/Right (workspace switching)"
echo "  - PrtSc (screenshot)"
echo "  - Function/media keys (volume, brightness, etc.)"
echo "  - F1-F12 keys (help, fullscreen, Alt+F2 run dialog, Alt+F4 close, etc.)"
echo ""
echo "Try pressing Super key to verify it works."
