#!/bin/bash

log_file="/var/log/gluetun-monitor.log"
lockfile="/tmp/gluetun-monitor.lock"
cooldown=360 # cooldown period in seconds

echo "Starting Gluetun monitor..." >> "$log_file"

docker events --filter 'type=container' --filter 'container=gluetun' --filter 'event=start' | while read event
do
    # Check if lockfile exists and is newer than cooldown period
    if [ -f "$lockfile" ] && [ $(($(date +%s) - $(stat -c %Y "$lockfile"))) -lt $cooldown ]; then
        echo "Skipping reset due to cooldown period..." >> "$log_file"
        continue
    fi

    # Create/update lockfile
    touch "$lockfile"
    
    echo "Gluetun container started, running network reset..." >> "$log_file"
    sudo /home/matthijs/Repos/LinuxPlexToDo/Launchscripts/reset-network.sh
done