#!/bin/bash

# Network reset script for qBittorrent
# This script must be run as root

# Error handling
set -e
log_msg() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root (use sudo)"
    exit 1
fi

# Main functions
flush_rules() {
    log_msg "Flushing all iptables rules..."
    iptables -F
    iptables -X
}

set_default_policies() {
    log_msg "Setting default policies..."
    iptables -P INPUT ACCEPT
    iptables -P FORWARD ACCEPT
    iptables -P OUTPUT ACCEPT
}

clear_nat() {
    log_msg "Clearing NAT rules..."
    iptables -t nat -F
}

restart_services() {
    log_msg "Restarting Docker service..."
    systemctl restart docker
}

start_gluetun() {
    log_msg "Starting Gluetun container..."
    cd ~/Repos/LinuxPlexToDo/Launchscripts/qbit || exit
    docker compose up -d
}

verify_reset() {
    log_msg "Verifying iptables rules..."
    iptables -L
}

save_config() {
    log_msg "Saving network configuration..."
    netfilter-persistent save
}

# Main execution
log_msg "Starting network reset process..."
flush_rules
set_default_policies
clear_nat
restart_services
start_gluetun
verify_reset
# save_config
log_msg "Network reset complete!"