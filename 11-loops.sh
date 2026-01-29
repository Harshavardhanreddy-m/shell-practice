#!/bin/bash

USERID=$(id -u)
LOGD-FOLDER="/var/log/shell-script"
LOGS-FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"  | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
         echo "$2 ... FALIURE"  | tee -a $LOGS_FILE
         exit 1
else
         echo "$2 ... SUCCESS"  | tee -a $LOGS_FILE
fi
}

for package in $@ # sudo sh 11-loops.sh nginx mysql nodejs
do
    dnf install $package -y
    VALIDATE $? "$Package installation"
done