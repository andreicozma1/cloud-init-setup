#!/bin/bash

# Install packages with APT
apt install -y git git-lfs

apt install -y make

apt install -y zip

apt install -y ncdu

apt install -y vim

apt install -y ufw fail2ban

# apt install zsh

apt install -y python3-pip python3-venv

apt install -y libusb-1.0-0-dev wiringpi raspi-config

apt install -y traceroute net-tools

apt install -y nginx

# UFW - Firewall Test
echo "# Testing UFW"
ufw reload
ufw status

# Install WebMin
echo "# Installing Webmin"
sudo add-apt-repository "deb [arch=amd64] http://download.webmin.com/download/repository sarge contrib"

cd /root
wget https://download.webmin.com/jcameron-key.asc
cat jcameron-key.asc | gpg --dearmor >/etc/apt/trusted.gpg.d/jcameron-key.gpg

apt-get install apt-transport-https software-properties-common
apt-get update
apt-get install webmin
