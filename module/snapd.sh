#!/bin/sh
echo "installing snapd"
sudo yum install -y snapd
sudo systemctl enable --now snapd.socket
