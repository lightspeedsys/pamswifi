#!/usr/bin/env bash

sudo apt-get install -y software-properties-common python-software-properties
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
echo "\n----- Installing Java 8 ------\n"
sudo apt-get -y install openjdk-8-jre

echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' \
| sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50
sudo apt-get update
sudo apt upgrade -y

sudo apt-get install -y unifi letsencrypt certbot