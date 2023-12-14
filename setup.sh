#!/bin/bash

# Update package lists
sudo apt update

# Install necessary packages
sudo apt-get install -y docker.io docker-compose golang-go git  burpsuite zaproxy

# Add a new user
sudo adduser abdulr7man
sudo usermod -aG docker abdulr7man
sudo usermod -aG sudo abdulr7man
sudo chsh -s /bin/zsh abdulr7man
wget https://raw.githubusercontent.com/abdulr7mann/kali-tools-setup/main/.tmux.conf -O ~/.tmux.conf

# Install Postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman-linux-x64.tar.gz && \
tar -xvzf postman-linux-x64.tar.gz -C /opt && \
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# Install Python dependencies
sudo pip3 install mitmproxy2swagger termcolor cprint pycryptodomex requests

# Clone required GitHub repositories
git clone https://github.com/ticarpi/jwt_tool /opt/jwt_tool
sudo ln -s /opt/jwt_tool/jwt_tool.py /usr/bin/jwt_tool
git clone https://github.com/assetnote/kiterunner.git /opt/kiterunner
sudo ln -s /opt/kiterunner/dist/kr /usr/bin/kr
git clone https://github.com/s0md3v/Arjun.git /opt/Arjun

# Download and extract SecLists
wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip && \
unzip SecList.zip -d /opt/ && \
rm -f SecList.zip

# Download and extract Hacking APIs
wget -c https://github.com/hAPI-hacker/Hacking-APIs/archive/refs/heads/main.zip -O HackingAPIs.zip && \
unzip HackingAPIs.zip -d /opt/ && \
rm -f HackingAPIs.zip

# Change ownership of /opt directory
sudo chown -R abdulr7man:abdulr7man /opt
