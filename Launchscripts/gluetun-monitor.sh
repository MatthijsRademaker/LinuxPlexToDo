#!/bin/bash

log_file="/var/log/gluetun-monitor.log"

echo "Starting Gluetun monitor..." >> "$log_file"

docker events --filter 'type=container' --filter 'container=gluetun' --filter 'event=start' | while read event
do
    echo "Gluetun container started, running network reset..." >> "$log_file"
    sudo /home/matthijs/Repos/LinuxPlexToDo/Launchscripts/reset-network.sh
done