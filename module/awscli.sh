#!/bin/sh
#awscli
echo "Installing AWS Cli"
sudo yum install -y zip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
sudo mv ./aws ~/aws
sudo rm -f ./awscliv2.zip
aws configure
sudo yum update -y
