#!/bin/sh
#chrome
sudo bash -c 'cat <<end > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enable=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
end'
sudo yum -y update
sudo yum install -y google-chrome-stable
