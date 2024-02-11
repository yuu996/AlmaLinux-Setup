#!/bin/sh
#OSアップデート
echo "OS updating!"
sudo yum update -y && sudo yum upgrade -y

#epel-releaseインストール
echo "installing epel-release.north"
sudo yum install -y epel-release

#firewalld設定
echo "setting firewalld!"
sudo firewall-cmd --remove-service=ssh --permanent
sudo firewall-cmd --list-service
sudo systemctl stop sshd

#snapdインストール
sudo yum install -y snapd
sudo systemctl enable --now snapd.socket

#awscliインストール
echo "installing aws cli!"
sudo yum install -y zip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
sudo mv ./aws ~/aws
sudo rm -f ./awscliv2.zip
aws configure 

#discordインストール
sudo yum install discord
/snap/bin/discord

#ウィンドウメニューの設定
echo "menu setupping!"
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

#nodejsインストール
#nodejs
sudo yum install -y nodejs

#VScodeインストール
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install -y code

#capslockをctrlとして使う
sudo tee /etc/X11/xorg.conf.d/00-keyboard.conf <<EOF
Section "InputClass"
    Identifier "keyboard defaults"
    MatchIsKeyboard "on"
    Option "XkbOptions" "ctrl:nocaps"
EndSection
EOF
sudo systemctl restart systemd-logind


