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

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Installing Nginx"

dnf install Mysql -y &>> $LOGS_FILE
VALIDATE $? "Installing Mysql"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing nodejs"