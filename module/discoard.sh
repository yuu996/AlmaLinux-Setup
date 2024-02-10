#!/bin/sh
#discoard
sudo tee /etc/yum.repos.d/discord.repo <<EOF
[discord]
name=Discord Stable
baseurl=https://dl.discordapp.net/apps/linux/centos/7/x86_64
enabled=1
gpgcheck=1
gpgkey=https://dl.discordapp.net/apps/linux/centos/gpg
EOF
sudo dnf install discord