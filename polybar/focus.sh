#!/bin/bash

# Get player status
status=$(playerctl status 2>/dev/null)
if [ $? -ne 0 ]; then
    echo ""
    exit
fi

# Get metadata
artist=$(playerctl metadata artist 2>/dev/null)
title=$(playerctl metadata title 2>/dev/null)

# Format output based on status
if [ "$status" = "Playing" ]; then
    if [ -n "$artist" ] && [ -n "$title" ]; then
        echo "$artist - $title" | cut -c1-45
    else
        echo "Playing" 
    fi
elif [ "$status" = "Paused" ]; then
    if [ -n "$artist" ] && [ -n "$title" ]; then
        echo "[PAUSED] $artist - $title" | cut -c1-45
    else
        echo "[PAUSED]"
    fi
else
    echo ""
fi
