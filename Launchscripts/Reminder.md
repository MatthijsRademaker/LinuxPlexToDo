# steps to restore networking for qbit

## Prep

run down.sh
sudo reboot

1. Flush All Rules
   sudo iptables -F

2. Delete Custom Chains
   sudo iptables -X

3. Set Default Policies
   sudo iptables -P INPUT ACCEPT
   sudo iptables -P FORWARD ACCEPT
   sudo iptables -P OUTPUT ACCEPT

4. Remove Any IP-Masquerading (NAT) Rules
   sudo iptables -t nat -F

5. Restart docker
   sudo systemctl restart docker

6. Spin up gluetun
   cd ~/Repos/LinuxPlexToDo/Launchscript/qbit
   docker compose up -d

7. Verify the Reset
   sudo iptables -L

8. Save the New Configuration (Optional)
   sudo netfilter-persistent save
