#!/bin/bash

TEST=0

clear; 

echo -e "

#####################################
#                                   #
# Welcome to ConfigureServerTools   #
#                                   #
# created by: Lucas Rios            #
#                                   #
# email: riosventosalucas@gmail.com #
#                                   #
#####################################

Hi, this script is for install a Centos7 server for hosting using.

We are going to install Apache (httpd), MariaDB (mysql), Pure-Ftp (FTP), JailShell, Dovecot and Exim server.

Also, we 're going to install PHP and Python enviroment.

On next update, i will try to provide Ruby and NodeJS support for hosting server. 

You are running on version: 0.0.1 :D

Thankyou for use it.

"

echo "Press ENTER to continue..."

read

clear; 

echo "Ok, we are going to start server installation..."

echo "But first, we need to configure some things..."

echo "We need to disable SELINUX."

echo "Press ENTER to disable SELINUX..."

read

if [ $TEST == 1 ] ; then
	cat selinux.conf > /etc/selinux/conf
fi
clear;

echo "Ok, the SELINUX is now disable, but... to get work, we need to restart the server. :("
echo "But wait, we need to install and configure more things before reboot."
echo "Now, we need to install all software."
echo "1. step: we're going to update the server."
echo "Press ENTER to continue..."
read

echo "making updates, please wait..."

if [ $TEST == 1 ] ; then
	yum update -y > /var/log/configureserver.log 
	yum upgrade -y >> /var/log/configureserver.log
fi

echo "Ok, we 're done. Now, continue to next step."

echo "2. step: Install some help soft..."

if [ $TEST == 1 ] ; then
	yum install wget mlocate vim telnet -y >> /var/log/configureserver.log
fi

echo "Ok, now, we need to install Epel repository."

echo "3. step: Install epel..."

if [ $TEST == 1 ] ; then
	wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -O /tmp/epel-release-latest-7.noarch.rpm >> /var/log/configureserver.log
	yum install /tmp/epel-release-latest-7.noarch.rpm -y >> /var/log/configureserver.log
fi

echo "Awesome. Now, we're going to install the server soft."

echo "Press ENTER to continue..."

read

clear ;

echo "4. step: Install server soft..."

echo "#Installing HTTP, please wait..."

if [ $TEST == 1 ] ; then
	yum install httpd -y  >> /var/log/configureserver.log
fi

echo "DONE"

echo "#Installing MariaDB, please wait..."

if [ $TEST == 1 ] ; then
	yum install mariadb-server -y  >> /var/log/configureserver.log
fi

echo "DONE"







