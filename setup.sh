#!/bin/bash

print_divider () {
  echo "====================================================="
}

echo "# STARTED: SERVER SETUP"

# Install packages with APT
print_divider
apt install -y git git-lfs

print_divider
apt install -y make

print_divider
apt install -y zip

print_divider
apt install -y ncdu

print_divider
apt install -y vim

print_divider
apt install -y ufw fail2ban

# apt install zsh
print_divider
apt install -y python3-pip python3-venv

print_divider
apt install -y libusb-1.0-0-dev wiringpi raspi-config

print_divider
apt install -y traceroute net-tools

print_divider
apt install -y nginx

# UFW - Firewall Test
print_divider
echo "# Testing UFW"
ufw reload
ufw status

# Install WebMin
print_divider
echo "# Installing Webmin"

cd /root
wget https://download.webmin.com/jcameron-key.asc
cat jcameron-key.asc | gpg --dearmor >/etc/apt/trusted.gpg.d/jcameron-key.gpg

sudo add-apt-repository "deb [arch=amd64] http://download.webmin.com/download/repository sarge contrib"

apt-get install -y apt-transport-https software-properties-common
apt-get update
apt-get install -y webmin
print_divider

echo "# FINISHED: SERVER SETUP"