#!/bin/bash

#Update and upgrade system prior to installing tools
sudo apt update
sudo apt upgrade

#Git install
echo "Installing git"
sudo apt install -y git

#Python install
echo "Installing Python3"
sudo apt-get install python3
echo "Installing pip"
sudo apt-get install python3-pip python-dev
echo "Installing Python requests"
pip3 install requests
echo "Installing Python flask"
sudo pip3 install flask
echo "Install Python Scapy"
sudo pip install scapy

#Go install
echo "Install Go"
sudo apt install -y golang-go

#Java install
echo "Installing Java"
sudo apt install default-jre
sudo apt install default-jdk

echo "Languages installed"
sleep 1
echo "Every good hacker needs some dev tools, here are some good options."

#Terminator install
sudo apt install -y terminator

#Atom install
echo "Installing the Atom text editor"
wget "https://atom.io/download/deb" -O atom.deb
dpkg -i atom.deb
rm atom.deb

#Visual Studio install
echo "Installing Visual Studio Code"
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

#Install Docker
sudo apt-get install docker.io

echo "Developer tools installed."
sleep 1
echo "Script finished."
sleep 1
echo "Run security.sh to continue with setup."
