#!/bin/bash

# Zen Mode Toggle Script for Polybar
# This script manages focus/zen mode by disabling distractions

ZEN_FILE="/tmp/zen_mode_active"
NOTIFICATION_PAUSE_FILE="/tmp/dunst_paused"

# Function to enable zen mode
enable_zen_mode() {
    # Create zen mode indicator file
    touch "$ZEN_FILE"
    
    # Pause notifications (if using dunst)
    if command -v dunstctl &> /dev/null; then
        dunstctl set-paused true
    elif command -v killall &> /dev/null; then
        killall -SIGUSR1 dunst 2>/dev/null
    fi
    
    # Kill distracting applications (customize as needed)
    # Example: kill Discord, Slack, etc.
    pkill -f discord 2>/dev/null
    pkill -f slack 2>/dev/null
    pkill -f telegram 2>/dev/null
    
    # Optional: Set a more minimal desktop wallpaper
    # feh --bg-fill /path/to/minimal-wallpaper.jpg
    
    # Send notification before disabling them
    notify-send "Zen Mode" "Focus mode enabled - Notifications disabled" -t 2000 2>/dev/null
    
    echo "ZEN"
}

# Function to disable zen mode
disable_zen_mode() {
    # Remove zen mode indicator file
    rm -f "$ZEN_FILE"
    
    # Resume notifications
    if command -v dunstctl &> /dev/null; then
        dunstctl set-paused false
    elif command -v killall &> /dev/null; then
        killall -SIGUSR2 dunst 2>/dev/null
    fi
    
    # Send notification
    notify-send "Zen Mode" "Focus mode disabled - Notifications enabled" -t 2000 2>/dev/null
    
    echo "OFF"
}

# Function to get current status
get_status() {
    if [ -f "$ZEN_FILE" ]; then
        echo "ZEN"
    else
        echo "OFF"
    fi
}

# Main logic
case "${1:-toggle}" in
    "toggle")
        if [ -f "$ZEN_FILE" ]; then
            disable_zen_mode
        else
            enable_zen_mode
        fi
        ;;
    "enable")
        enable_zen_mode
        ;;
    "disable")
        disable_zen_mode
        ;;
    "status")
        get_status
        ;;
    *)
        echo "Usage: $0 {toggle|enable|disable|status}"
        exit 1
        ;;
esac
