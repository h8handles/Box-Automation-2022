#!/bin/bash


wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -

echo 'deb https://debian.neo4j.com/ stable 4.4' | sudo tee -a /etc/apt/sources.list.d/neo4j.list

sudo apt-get update
sudo apt install neo4j

cd /opt/

wget https://github.com/BloodHoundAD/BloodHound/releases/download/4.2.0/BloodHound-linux-x64.zip

unzip BloodHound-linux-x64.zip


