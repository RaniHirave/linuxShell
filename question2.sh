#!/usr/bin/expect

## Access CLI
set loginUser "admin"
set loginPassword "password"
set mgmtServerAddress manager_host

## Expect Parameters
set timeout 20
set successMsg "Status: Success"
set failureMsg "Status: Failure"

spawn ssh -l $loginUser $mgmtServerAddress -p 10000
expect_after eof {exit 0}

set timeout 10

##interact with SSH
##expect "yes/no" {send "yes\r"}
expect "password:" {send "$loginPassword\r"}
puts "\n## Starting Generated OVMCLI Script... ##\n"
set timeout 600

expect "OVM> "
send "set OutputMode=Verbose\r"
expect $successMsg {} \
    timeout { puts "\n\nTest Failure: \n\r"; exit} 

expect "OVM> "
  send  "list Server\r"
  expect $successMsg {} \
   timeout { puts "\n\nScript Failure: \n\r"; exit}
