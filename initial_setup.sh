#!/bin/sh
echo "OS updating!"
sudo yum update -y && sudo yum upgrade -y

#menu-setup
echo "menu setupping!"
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

#tweaks
echo "installing gnome-tweaks!"
sudo yum install -y gnome-tweaks

#change capslock->capslock
sudo tee /etc/X11/xorg.conf.d/00-keyboard.conf <<EOF
Section "InputClass"
    Identifier "keyboard defaults"
    MatchIsKeyboard "on"
    Option "XkbOptions" "ctrl:nocaps"
EndSection
EOF
sudo systemctl restart systemd-logind

#firewalld
echo "setting firewalld!"
sudo systemctl status firewalld
sudo firewall-cmd --remove-service=ssh --permanent
sudo firewall-cmd --list-service
sudo systemctl status sshd
sudo systemctl stop sshd
sudo yum install -y epel-release

#chrome
echo "installing Google chrome!"
sudo tee /etc/yum.repos.d/google-chrome.repo <<EOF
[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64
enabled=1
gpgcheck=1
gpgkey=https://dl.google.com/linux/linux_signing_key.pub
EOF
sudo yum install -y google-chrome-stable

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

#bitwarden
sudo tee /etc/yum.repos.d/bitwarden.repo <<EOF
[bitwarden]
name=Bitwarden Repository
baseurl=https://rpm-repo.bitwarden.com/release/el/latest
enabled=1
gpgcheck=1
gpgkey=https://go.pry.sh/bitwarden-rpm-public-key
EOF
sudo dnf install bitwarden

#nodejs
sudo yum install -y nodejs

#awscli
echo "installing aws cli!"
sudo yum install -y awscli
aws configure
