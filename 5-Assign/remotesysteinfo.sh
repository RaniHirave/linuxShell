#!/bin/bash

#This command is for single remote machine

ssh rhirave@127.0.0.1 'bash -s' < remotescript.sh > info.txt && cat info.txt

#If we have mutile remote machine then we can use above script inside the for loop
# here remote_machine_ip.txt containes the list of remote machines ip address.

for s in ` cat remote_machine_ip.txt`
do
   ssh testuser@${s} 'bash -s' < /home/rhirave/bin/test.sh
done

#In case if we are running this script on any clous server like ec2 instance we need the .pem file of ec2 instace server
