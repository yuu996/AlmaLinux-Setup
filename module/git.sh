#!/bin/sh
#gitインストール
sudo yum install -y git

read -p "input your git username : " gitusername
read -p "input your git email : " gitemail
git config --global user.name "$gitusername"
git config --global user.email "$gitemail"
