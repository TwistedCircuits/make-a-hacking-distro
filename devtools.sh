#!/bin/bash

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
echo "Installing Docker"
sudo apt-get install docker.io

#Install VirtualBox
echo "Installing VirtualBox"
sudo apt install -y virtualbox-qt

#Install Real VNC Viewer
echo "Installing Real VNC viewer"
wget "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.17.1113-Linux-x64.deb" -O vnc_viewer.deb
dpkg -i vnc_viewer.deb
rm vnc_viewer.deb

#Install Real VNC server
echo "Installing Real VNC server"
wget 'https://www.realvnc.com/download/file/vnc.files/VNC-Server-6.2.1-Linux-x64.deb' -O vnc_server.deb
dpkg -i vnc_server.deb
rm vnc_server.deb

echo "Developer tools installed."
sleep 1
echo "Script finished."

