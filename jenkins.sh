#!/bin/bash

        #Aothor : kojo

        #Date : 12-06-2022


##----------------------------------Jenkins Installation-------------------------

sudo yum install java-1.8.0-openjdk-devel -y


# Enable the jenkins repository

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo


sudo yum install wget -y

sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo

sudo yum install jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins

 sudo systemctl enable jenkins

sudo firewall-cmd --permanent --zone=public --add-port=80/tcp

 sudo firewall-cmd --reload

#http://your_ip_or_domain:8080

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# Then follow instructions on the website..