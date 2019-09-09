#!/usr/bin/expect
spawn ./first.sh
expect -exact "Which package you want to install?\r"
send -- "nmap\r"
expect -exact "Which package you want to install?\r"
send -- "nfs-common\r"
expect eof