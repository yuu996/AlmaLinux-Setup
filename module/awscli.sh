#!/bin/sh
#awscli
echo "installing aws cli!"
sudo yum install -y zip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
sudo mv ./aws ~/aws
sudo rm -f ./awscliv2.zip
aws configure

sleep 10 bitwarden.sh chrome.sh discord.sh epel-release.sh firewalld.sh menu-setup.sh nodejs.sh snapd.sh timestamp_timeout.sh tweaks.sh update.sh vscode.sh
