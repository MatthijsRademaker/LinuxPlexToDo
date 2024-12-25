#!/bin/bash

echo "Starting all services..."

# Alphabetically sorted services
cd ~/Repos/LinuxPlexToDo/Launchscripts/books
docker compose up -d

cd ~/Repos/LinuxPlexToDo/Launchscripts/home-assistant
docker compose up -d

cd ~/Repos/LinuxPlexToDo/Launchscripts/homepage
docker compose up -d

cd ~/Repos/LinuxPlexToDo/Launchscripts/immich
docker compose up -d

cd ~/Repos/LinuxPlexToDo/Launchscripts/monitoring
docker compose up -d

cd ~/Repos/LinuxPlexToDo/Launchscripts/next-cloud
docker compose up -d

cd ~/Repos/LinuxPlexToDo/Launchscripts/plex
docker compose up -d

cd ~/Repos/LinuxPlexToDo/Launchscripts/servarr
docker compose up -d

# qbit as last service because it gets random ips assigned
cd ~/Repos/LinuxPlexToDo/Launchscripts/qbit
docker compose up -d

echo "All services are up and running!"