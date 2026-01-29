#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access "
    exit 1
fi

echo "Installing  Nginx"
dnf install nginx  -y

if [ $USERID -ne 0 ]; then
    echo "Installing  Nginx ... FALIURE"
    exit 1
else
    echo "Installing  Nginx ... SUCCESS"
fi

dnf install nginx  -y

if [ $USERID -ne 0 ]; then
    echo "Installing  MySQL ... FALIURE"
    exit 1
else
    echo "Installing  MySQL ... SUCCESS"
fi

dnf install nodejs  -y

if [ $USERID -ne 0 ]; then
    echo "Installing  nodejs ... FALIURE"
    exit 1
else
    echo "Installing  nodejs ... SUCCESS"
fi