#!/bin/sh
#menu-setup
echo "menu setupping!"
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
sudo yum update -y
