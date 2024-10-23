#!/bin/bash

USERID=$(id)

VALIDATE (){
    echo "exit status: $1"
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root previlages"
    exit 1
fi

dnf list installed git

if [ $? -ne 0 ]
then   
    echo "git is not installed, going to install it.."
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "git installation is not success --check it--"
        exit 1
    else
        echo "Git installation is success"
else
    echo "git is already installed nothing to do!!"
fi

echo "Install mysql:"

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo " my sql is not installed , going to install it now"
    dnf install mysql
    if [ $? -ne 0 ]
    then
        echo "mysql not installed, there is some issue, please check"
        exit 1
    else
        echo "mysql successfully installed"
    fi
else 
    echo " mysql already installed."
fi
