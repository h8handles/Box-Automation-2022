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
sudo chown  $USER /opt/
mkdir htb;mkdir tryhackme; mkdir web; mkdir /opt/web;
# web should mirror opt web folder

# make desktop folders for CTF platforms
# chown the opt folder user env var for user
# create opt structure for tools web for uploads  wordlists

echo -e "\e[92mInstalling Terminal Environment ....\e[0m"
sudo apt install git terminator

# install zsh/oh-my-zsh

