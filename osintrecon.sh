#!/bin/bash

#In order to keep track of the location of the tools this script will install them all to Desktop
cd Desktop || exit

#Sherlock
#Sherlock is an OSINT to scrape usernames from social platforms
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock || exit
python3 -m pip install -r requirements.txt

cd ..

#Maigret
#Maigret is an alternative to Sherlock does the same thing with a little bit more functionality
git clone https://github.com/soxoj/maigret 
cd maigret || exit
pip3 install -r requirements.txt

cd ..

#Twint
#Twint is a tool to scrape information from Twitter
git clone --depth=1 https://github.com/twintproject/twint.git
cd twint || exit
pip3 install . -r requirements.txt

cd ..

#Instaloader
#Instaloader is a tool to scrape information from Instagram
sudo pip3 install instaloader

