#!/bin/bash
#
#-----------------------------
# Automatic Fresh Box Setup  |
# Author: H8handles 8/13/2022|
#-----------------------------
#
#
echo -e "\e[92mSetting up directory structure ....\e[0m"
cd ~/Desktop/
sudo chown  $USER /opt/*


mkdir htb;mkdir tryhackme; mkdir web;
# web should mirror opt web folder

# make desktop folders for CTF platforms
# chown the opt folder user env var for user
# create opt structure for tools web for uploads  wordlists

echo -e "\e[92mInstalling Terminal Environment ....\e[0m"
sudo apt install git xclip terminator -y

# install zsh/oh-my-zsh

echo -e "\e[92mSetting up Bloodhound ....\e[0m"

echo "deb http://httpredir.debian.org/debian stretch-backports main" | sudo tee -a /etc/apt/sources.list.d/stretch-backports.list

sudo apt-get update

wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -
echo 'deb https://debian.neo4j.com stable 4.0' > /etc/apt/sources.list.d/neo4j.list
sudo apt-get install apt-transport-https
sudo apt-get install neo4j
sudo systemctl stop neo4j
cd /usr/bin
./neo4j console
cd ~/Downloads
wget https://github.com/BloodHoundAD/BloodHound/releases/download/4.2.0/BloodHound-linux-arm64.zip
cp BloodHound-linux-arm64.zip /opt

cd /opt
unzip BloodHound-linux-arm64.zip

echo -e "\e[92mMAKE SURE TO CHANGE CREDS FOR NEO4J!!!! ....\e[0m"

