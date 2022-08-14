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
sudo chown  "$USER" /opt/


mkdir htb;mkdir tryhackme; mkdir web;
# web should mirror opt web folder

# make desktop folders for CTF platforms
# chown the opt folder user env var for user
# create opt structure for tools web for uploads  wordlists

echo -e "\e[92mInstalling Terminal Environment ....\e[0m"
sudo apt install git python3-pip virtualenv xclip terminator -y

# install zsh/oh-my-zsh

echo -e "\e[92mSetting up Bloodhound ....\e[0m"

wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -

echo 'deb https://debian.neo4j.com/ stable 4.4' | sudo tee -a /etc/apt/sources.list.d/neo4j.list

sudo apt-get update
sudo apt install neo4j

cd /opt/

wget https://github.com/BloodHoundAD/BloodHound/releases/download/4.2.0/BloodHound-linux-x64.zip

unzip BloodHound-linux-x64.zip


echo "\e[92mMAKE SURE TO CHANGE CREDS FOR NEO4J!!!! ....\e[0m"

