#!/bin/bash

#In order to keep track of the location of the tools this script will install them all to Desktop
cd Desktop || exit

#Sherlock install
#Sherlock is an OSINT to scrape usernames from social platforms
echo "Installing Sherlock"
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock || exit
python3 -m pip install -r requirements.txt

cd ..

#Maigret install
#Maigret is an alternative to Sherlock does the same thing with a little bit more functionality
echo "Installing Maigret"
git clone https://github.com/soxoj/maigret 
cd maigret || exit
sudo pip3 install -r requirements.txt

cd ..

#Twint install
#Twint is a tool to scrape information from Twitter
echo "Installing Twint"
git clone --depth=1 https://github.com/twintproject/twint.git
cd twint || exit
sudo pip3 install . -r requirements.txt

cd ..

#Instaloader install
#Instaloader is a tool to scrape information from Instagram
echo "Installing Twint"
sudo pip3 install instaloader

cd ..

#Shodan-CLI install
#Shodan is a search engine for everything connected to the internet
echo "Installing Shodan-CLI"
sudo pip3 install -U --user shodan

#Spiderfoot install
#Spiderfoot is an OSINT automation tool
echo "Installing Spiderfoot"
git clone https://github.com/smicallef/spiderfoot.git
cd spiderfoot
pip3 install -r requirements.txt
python3 ./sf.py -l 127.0.0.1:5001
cd ..

#Maltego install
#Maltego is an open source intelligence and forensics application.
echo "Installing Maltego"
sudo apt install maltego

#TheHarvester install
#TheHarvester performs OSINT investigations
echo "Installing theHarvester"
git clone https://github.com/laramies/theHarvester
cd theHarvester
python3 -m pip install -r requirements/base.txt
cd ..

