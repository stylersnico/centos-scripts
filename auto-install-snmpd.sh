#! /bin/bash
# Use : wget -O- https://raw.githubusercontent.com/stylersnico/centos-scripts/master/auto-install-snmpd.sh | sh

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo "--> Updating CentOS System"
yum -y update

echo "--> Installing htop"
yum -y install net-snmp

echo "--> Launch snmpd at boot"
chkconfig --level 3 snmpd on

echo "--> Restart services"
/etc/init.d/snmpd stop && /etc/init.d/snmpd start

echo "--> Show the launch at boot"
ls /etc/rc3.d/*snmpd*

echo "--> If you see a blue line, it's working !"

