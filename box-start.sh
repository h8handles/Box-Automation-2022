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


mkdir htb;mkdir tryhackme; mkdir web;mkdir /opt/web
# web should mirror opt web folder

# make desktop folders for CTF platforms
# chown the opt folder user env var for user
# create opt structure for tools web for uploads  wordlists

echo -e "\e[92mInstalling Terminal Environment ....\e[0m"
sudo apt install git python3-pip virtualenv xclip terminator -y -q

# install zsh/oh-my-zsh

echo -e "\e[92mSetting up Bloodhound ....\e[0m"

wget --no-verbose -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -

echo 'deb https://debian.neo4j.com/ stable 4.4' | sudo tee -a /etc/apt/sources.list.d/neo4j.list

sudo apt-get update --quiet
sudo apt install neo4j -y --quiet

cd /opt/

wget --no-verbose https://github.com/BloodHoundAD/BloodHound/releases/download/4.2.0/BloodHound-linux-x64.zip

unzip BloodHound-linux-x64.zip


echo -e "\e[92mInstalling Sublime Text ....\e[0m"

cd ~/Downloads
wget --no-verbose https://download.sublimetext.com/sublime-text_build-3211_amd64.deb

sudo dpkg -i sublime-text_build-3211_amd64.deb

echo -e "\e[92mSetting up web folder for uploads ....\e[0m"

cd ~/Desktop/web
mkdir powershell
mkdir collectors
mkdir win-binaries
cd collectors
cp /opt/BloodHound-linux-x64/resources/app/Collectors/SharpHound.exe .
cp /opt/BloodHound-linux-x64/resources/app/Collectors/SharpHound.ps1 .
cd ../powershell
wget --no-verbose https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Recon/PowerView.ps1
wget --no-verbose https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/PowerUp.ps1
wget --no-verbose https://raw.githubusercontent.com/Kevin-Robertson/Powermad/master/Powermad.ps1

echo -e "\e[92m Digging up some Juicy Potatoes ! ....\e[0m"
cd ../win-binaries
wget --no-verbose https://github.com/ohpe/juicy-potato/releases/download/v0.1/JuicyPotato.exe
wget --no-verbose https://raw.githubusercontent.com/calebstewart/CVE-2021-1675/main/CVE-2021-1675.ps1
cd /opt
git clone https://github.com/samratashok/nishang.git
cd ~/Desktop/web

