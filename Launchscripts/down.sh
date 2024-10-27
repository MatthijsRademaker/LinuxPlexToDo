#!/bin/bash

echo "Stopping all services..."

cd ~/Repos/LinuxPlexToDo/Launchscripts/monitoring
docker compose down

cd ~/Repos/LinuxPlexToDo/Launchscripts/plex
docker compose down

cd ~/Repos/LinuxPlexToDo/Launchscripts/qbit
docker compose down

cd ~/Repos/LinuxPlexToDo/Launchscripts/servarr
docker compose down

echo "All services are down"

