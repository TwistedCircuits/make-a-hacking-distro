#!/bin/bash

#Install Openvpn
echo "Installing openvpn"
sudo apt-get install -y Openvpn

#Install ClamAV
echo "Installing ClamAV"
sudo apt-get install clamav clamav-daemon

#Install Keepass
echo "Installing Keepass"
sudo snap install keepassxc

#Install Brave Browser
echo "Installing Brave Browser"
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

#Install Anoncrypt
echo "Installing Anoncrypt"

