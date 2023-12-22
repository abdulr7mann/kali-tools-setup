#!/bin/bash

# Adding Subl apt repository package
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Update package lists
sudo apt update

# Install necessary packages
sudo apt-get install -y docker.io docker-compose golang-go git python3-venv arjun apt-transport-https sublime-text burpsuite zaproxy gobuster ffuf seclists curl dnsrecon enum4linux feroxbuster wfuzz impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf

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
git clone https://github.com/ticarpi/jwt_tool /opt/jwt_tool && chmod +x /opt/jwt_tool/jwt_tool.py
sudo ln -s /opt/jwt_tool/jwt_tool.py /usr/bin/jwt_tool
git clone https://github.com/assetnote/kiterunner.git /opt/kiterunner && cd /opt/kiterunner && make build && ln -s /opt/kiterunner/dist/kr /usr/local/bin/kr
#git clone https://github.com/s0md3v/Arjun.git /opt/Arjun
git clone https://github.com/21y4d/nmapAutomator.git /opt/nmapAutomator
sudo ln -s /opt/nmapAutomator/nmapAutomator.sh /usr/bin/nmapAutomator
python3 -m pip install git+https://github.com/Tib3rius/AutoRecon.git
# Download and extract Hacking APIs
wget -c https://github.com/hAPI-hacker/Hacking-APIs/archive/refs/heads/main.zip -O HackingAPIs.zip && \
unzip HackingAPIs.zip -d /opt/ && \
rm -f HackingAPIs.zip

# Change ownership of /opt directory
sudo chown -R abdulr7man:abdulr7man /opt
