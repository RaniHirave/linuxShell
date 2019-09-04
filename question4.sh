#!/bin/bash

read -p "Enter Dir: "  dir
echo "Dir: $dir"
rm -rf $dir | tr -s ' ' | cut -d ' ' -f9 

