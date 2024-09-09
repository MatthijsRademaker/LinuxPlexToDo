#!/bin/bash

# Wait for the user session to be fully loaded
timeout=60
while [ $timeout -gt 0 ] && [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; do
    sleep 1
    timeout=$((timeout - 1))
done

sudo eddie-cli --login="TheoBeoRodeo" --password='xxx' --netlock --connect
