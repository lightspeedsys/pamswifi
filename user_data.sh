#!/usr/bin/env bash

apt-get install -y software-properties-common python-software-properties
add-apt-repository ppa:openjdk-r/ppa -y
apt-get update
echo "\n----- Installing Java 8 ------\n"
apt-get -y install openjdk-8-jre

echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' \
| tee /etc/apt/sources.list.d/100-ubnt-unifi.list
apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50
apt-get update
apt upgrade -y

apt-get install -y unifi letsencrypt certbot