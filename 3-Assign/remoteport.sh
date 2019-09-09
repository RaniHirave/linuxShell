#!/bin/bash

echo "Please emter the IP Address of the remote host"
read IP_Address

echo "Please enter the port which you want to check"

read port

echo "Below command shows port is open or not "

nc -zvw3 $IP_Address $port

 nmap $IP_Address -p $port

 echo "Please enter the type CTRL + ] then enter and  type close or ctl +C enter "

 telnet $IP_Address $port

