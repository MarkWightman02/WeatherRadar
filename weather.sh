#!/bin/bash

while true; do
    # Generate or fetch the new GIF URL here
    NEW_URL="https://radar.weather.gov/ridge/standard/NORTHEAST_loop.gif"

    # Set the path to the mpv configuration file
    MPV_CONFIG_FILE="$HOME/.config/mpv/mpv.conf"

    # Stop the current mpv instance (if running)
    pkill -f "mpv"

    # Start playing the new GIF with specified geometry
    MPV_HOME="$HOME/.config/mpv" mpv --loop=inf "$NEW_URL" &

    echo "Updated to $NEW_URL"

    # Sleep for 1 hour (3600 seconds) before updating again
    sleep 28800  
done

