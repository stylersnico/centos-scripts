#! /bin/bash
# Use : wget -O- https://raw.githubusercontent.com/stylersnico/centos-scripts/master/htop-for-centos.sh | sh

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo "--> Download the repository file"
cd /etc/yum.repos.d/
wget https://raw.githubusercontent.com/stylersnico/centos-scripts/master/config-files/CentOS-Dag.repo

echo "--> Updating CentOS System"
yum -y update

echo "--> Installing htop"
yum -y install htop
