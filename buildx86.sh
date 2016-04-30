#!/bin/bash


echo "Hello World!"

echo "Intializing Authenticatio Rules"

sudo apt-get install git scons g++ zlib1g-dev

git clone git://github.com/avadhpatel/marss.git

cd marss

echo "Executing the Simulator"

sleep 5

scons -Q

echo "Downloading Linux Image"

sleep 3

wget  http://bertha.cs.binghamton.edu/downloads/ubuntu-natty.tar.bz2

tar jxvf ubuntu-natty.tar.bz2

echo "Success Installation and Download"

echo "Starting Marssx86"

sleep 4

qemu/qemu-system-x86_64 -hda /home/ubuntu-natty.qcow2 
