#!/bin/sh
./module/update.sh
./module/git.sh
./module/timestamp_timeout.sh
./module/epel-release.sh
./module/firewalld.sh
./module/snapd.sh
./module/awscli.sh
./module/update.sh
sleep 60
./module/discord.sh
./module/menu-setup.sh
./module/nodejs.sh
./module/vscode.sh
./module/bitwarden.sh
./module/chrome.sh
./module/tweaks.sh
./module/update.sh
