#!/bin/bash

# Install packages with APT
apt install git git-lfs

apt install make

apt install zip

apt install ncdu

apt install vim

apt install ufw fail2ban

# apt install zsh

apt install python3-pip python3-venv

apt install libusb-1.0-0-dev wiringpi raspi-config

apt install traceroute net-tools

apt install nginx

# UFW - Firewall Test
echo "# Testing UFW"
ufw reload
ufw status


# Install WebMin
echo "# Installing Webmin"
cd /root
wget https://download.webmin.com/jcameron-key.asc
cat jcameron-key.asc | gpg --dearmor >/etc/apt/trusted.gpg.d/jcameron-key.gpg

apt-get install apt-transport-https
apt-get update
apt-get install webmin
