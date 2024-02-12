#!/bin/sh
./module/update.sh
wait
./module/epel-release.sh
wait
./module/git.sh
wait
./module/firewalld.sh
wait
./module/snapd.sh
wait
./module/awscli.sh
wait
./module/menu-setup.sh
wait
./module/nodejs.sh
wait
./module/vscode.sh
wait
while :
do
    ./module/discord.sh
    wait
    if [ $? -eq 0 ]; then
        break
    fi
    sleep 5
done
./module/bitwarden.sh
wait
./module/chrome.sh
wait
./module/tweaks.sh

