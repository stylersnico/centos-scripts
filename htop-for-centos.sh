#! /bin/bash
echo "--> Download the repository file"
cd /etc/yum.repos.d/
wget https://raw.githubusercontent.com/stylersnico/centos-scripts/master/config-files/CentOS-Dag.repo

echo "--> Updating CentOS System"
yum -y update

echo "--> Installing htop"
yum -y install htop