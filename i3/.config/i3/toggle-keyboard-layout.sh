#!/bin/bash

# Check the current keyboard layout
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Set the device ID (replace '3' with your actual device ID)
device_id=3

# Toggle between English (US) and Spanish (Latin American)
if [ "$current_layout" == "us" ]; then
    setxkbmap -device $device_id -layout es
    echo "Switched to Spanish (Latin American)"
elif [ "$current_layout" == "es" ]; then
    setxkbmap -device $device_id -layout us
    echo "Switched to English (US)"
else
    echo "Current layout is not recognized: $current_layout"
fi

