#!/bin/bash

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

echo "Press enter to continue..."

read

clear; 

echo "Ok, we are going to start server installation..."

echo "But first, we need to configure some things..."

echo "We need to disable SELINUX."

echo "Press enter to disable SELINUX..."

read

cat selinux.conf > /etc/selinux/conf




