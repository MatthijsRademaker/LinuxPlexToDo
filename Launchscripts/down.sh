#!/bin/bash

echo "Stopping all services..."

cd ~/Repos/LinuxPlexToDo/Launchscripts/monitoring
docker compose down

cd ~/Repos/LinuxPlexToDo/Launchscripts/immich
docker compose down

cd ~/Repos/LinuxPlexToDo/Launchscripts/plex
docker compose down

cd ~/Repos/LinuxPlexToDo/Launchscripts/qbit
docker compose down

cd ~/Repos/LinuxPlexToDo/Launchscripts/servarr
docker compose down

cd ~/Repos/LinuxPlexToDo/Launchscripts/books
docker compose down

cd ~/Repos/LinuxPlexToDo/Launchscripts/home-assistant
docker compose down

cd ~/Repos/LinuxPlexToDo/Launchscripts/plex
docker compose down

echo "All services are down"

