#!/bin/bash
echo "Which package you want to install?"
read ANSWER

sudo apt-get install $ANSWER -y
which nmap
echo "Which package you want to install?"
read ANSWER
sudo apt-get install $ANSWER -y

ipodpkg -la | grep nfs

