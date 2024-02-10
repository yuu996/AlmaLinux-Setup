#!/bin/sh
#firewalld
echo "setting firewalld!"
sudo systemctl status firewalld
sudo firewall-cmd --remove-service=ssh --permanent
sudo firewall-cmd --list-service
sudo systemctl status sshd
sudo systemctl stop sshd
sudo yum install -y epel-release
