#!/bin/bash

#Nmap install
echo "Installing Nmap"
sleep 1
sudo rpm -vhU https://nmap.org/dist/zenmap-7.93-1.noarch.rpm

sleep 1

#SQLMap install
echo "Installing SQLMap"
sleep1
sudo apt-get install sqlmap 

sleep 1

#Amass install
echo "Installing Amass"
sleep 1
sudo apt install amass

sleep 1

#Dirbuster install
echo "Installing Dirbuster"
sleep 1
sudo apt install dirbuster

sleep 1

#OpenVAS install
echo "Installing OpenVAS"
sleep 1
sudo apt install openvas

sleep 1

echo "Script has finished running."
sleep 1
echo "Run the exploitation.sh script to continue the installation."
