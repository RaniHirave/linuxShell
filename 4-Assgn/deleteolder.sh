#!/bin/bash

#echo "Please enter the name of directory which you want to clean"
#read dir
#echo "you entered directory name $dir contains below list of folder and files"
#cd $dir && ls -al 

#echo "Please enter the date in 'YY/MM/DD' format"
read enterd_date
echo $enterd_date

echo $((($(date +%s)-$(date +%s --date "$enterd_date"))/(3600*24))) days
