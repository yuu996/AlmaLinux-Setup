#!/bin/sh
#firewalld
echo "setting firewalld!"
sudo firewall-cmd --remove-service=ssh --permanent
sudo firewall-cmd --list-service
sudo systemctl stop sshd
sleep 10
