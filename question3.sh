#!/usr/bin/env bash

 nmap localhost -PN -p ssh | egrep 'open|closed|filtered'
