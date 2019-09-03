#!/usr/bin/expect

## Expect Parameters
set timeout 20
set successMsg "Status: Success"
set failureMsg "Status: Failure"

apt-get install nmap
expect_after eof {exit 0}

set timeout 10

apt install nfs-common
