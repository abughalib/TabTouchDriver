#!/bin/bash
echo "This script is for debian based linux destro"
echo "Like -> Ubuntu, Kali-Linux, Elementary Os"
sudo apt-get update
sudo apt-get install make
sudo apt-get install git
sudo apt-get install gcc
sudo apt-get install g++
sudo apt install linux-headers-$(uname -r)