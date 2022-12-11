#!/bin/bash

#Update and upgrade system prior to installing tools
sudo apt update
sudo apt upgrade

#Snap install
echo "Installing Snap"
sudo apt-get install snapd

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
echo "Run security.sh to continue with setup"
