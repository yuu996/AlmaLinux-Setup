#!/bin/sh
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
