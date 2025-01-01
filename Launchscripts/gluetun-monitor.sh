#!/bin/bash

log_file="/var/log/gluetun-monitor.log"
lockfile="/tmp/gluetun-monitor.lock"
cooldown=360 # cooldown period in seconds
max_attempts=30 # maximum number of health check attempts
sleep_interval=2 # seconds between health checks

echo "Starting Gluetun monitor..." >> "$log_file"

docker events --filter 'type=container' --filter 'container=gluetun' --filter 'event=start' | while read event
do
    # Check if lockfile exists and is newer than cooldown period
    if [ -f "$lockfile" ] && [ $(($(date +%s) - $(stat -c %Y "$lockfile"))) -lt $cooldown ]; then
        echo "Skipping reset due to cooldown period..." >> "$log_file"
        continue
    fi

    # Wait for container to be healthy
    echo "Waiting for Gluetun container to be healthy..." >> "$log_file"
    attempts=0
    while [ $attempts -lt $max_attempts ]; do
        if docker container inspect gluetun --format '{{.State.Health.Status}}' 2>/dev/null | grep -q "healthy"; then
            echo "Gluetun container is healthy" >> "$log_file"
            break
        fi
        attempts=$((attempts + 1))
        echo "Health check attempt $attempts/$max_attempts" >> "$log_file"
        sleep $sleep_interval
    done

    if [ $attempts -eq $max_attempts ]; then
        echo "Gluetun container failed to become healthy after $max_attempts attempts" >> "$log_file"
        continue
    fi

    # Create/update lockfile
    touch "$lockfile"
    
    echo "Gluetun container started and healthy, running network reset..." >> "$log_file"
    sudo /home/matthijs/Repos/LinuxPlexToDo/Launchscripts/reset-network.sh
done