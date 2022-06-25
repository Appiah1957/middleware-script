#!/bin/bash

        #Author : Excellent
        #Date : 20-Jun-2022

##-------------- Docker Installation Automation script ----------------      
echo "Docker Installation to begin, Please wait .... "
sleep 2
if [ ${USER} != root ]
        then
        echo " You need to have root access to run this script"
        exit 2
fi
#First clean system by removin older versions of docker
echo "Clearing system of all older versions of docker, Please wait .... "    
sleep 2
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine -y
sleep 2
if [ $? -eq 0 ]
        then
        echo "All older versions of docker have been clear."
        else
        echo "Older versions of docker were unable to be cleared."
        exit 2
fi
sleep 2

#Setup the docker repo
echo "Install yum-utils, Please wait .... "
sleep 2
yum install yum-utils -y
sleep 2
if [ $? -eq 0 ]
        then
        echo "Yum-utils package has been installed successfully."
