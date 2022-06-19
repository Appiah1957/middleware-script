#!/bin/bash


#       Author: Kojo

#       Date:   06-15-2022




#-------------------------Docker Installation CentOS-----------------------------------

# Step1 clean up the system

sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

# Step2 Setup the Docker Repo
echo " this will start installation"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

#Step3 install the Docker engine

sudo yum install docker-ce docker-ce-cli containerd.io -y

#Step4 Checking the status start and enable docker daemon

sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker