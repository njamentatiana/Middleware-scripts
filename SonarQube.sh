#!/bin/bash

#Description : SonarQube
#Author : Tatiana , feb 22, 2022

echo "Installation of SonarQube in progres"
sleep 2
echo
sleep 3
yum update -y
sleep 3
sudo yum install java-11-openjdk-devel -y
sleep 3
cd /opt 
sleep 3
sudo yum install wget -y
sleep 3
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sleep 3
sudo yum install unzip -y
sleep 3
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sleep 3
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
sleep 3
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
sleep 3
./sonar.sh start
sleep 3
echo "SonarQube installed successfully"
