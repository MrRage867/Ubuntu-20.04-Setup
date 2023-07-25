#!/bin/bash

apt update -y
apt upgrade -y
apt install curl -y
apt install python3-pip -y
apt install golang -y
pip3 install requests[socks]
apt install screen -y
pip3 install colorama
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -;sudo apt -y install nodejs -y
npm install requests
apt install neofetch -y
apt install apache2 -y
npm install zombie
npm install superagent
npm install superagent-proxy
npm install axios
apt install curl -y
apt install php -y
apt install python3-paramiko -y
apt install hping3 -y
pip3 install psutil
apt-get install build-essential -y
npm install randomstring
npm install fake-useragent
apt install vnstat -y
apt install nload -y
apt install nano -y
apt install curl -y
apt install wget -y
apt install iptables -y
apt install jq -y
echo "* soft     nproc          65535" >> /etc/security/limits.conf
echo "* hard     nproc          65535" >> /etc/security/limits.conf
echo "* soft     nofile         65535" >> /etc/security/limits.conf
echo "* hard     nofile         65535" >> /etc/security/limits.conf
echo "root soft     nproc          65535" >> /etc/security/limits.conf
echo "root hard     nproc          65535" >> /etc/security/limits.conf
echo "root soft     nofile         65535" >> /etc/security/limits.conf
echo "root hard     nofile         65535" >> /etc/security/limits.conf
curl "https://raw.githubusercontent.com/MrRage867/Ubuntu-20.04-Setup/main/block.sh" -O block.sh
bash block.sh
cd /usr/bin
curl "https://github.com/MrRage867/Ubuntu-20.04-Setup/raw/main/speedtest" -O speedtest
chmod +x speedtest
cd /root
rm -rf setup.sh
rm -rf block.sh
