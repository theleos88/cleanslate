#!/bin/bash

# Mandatory cleanup
sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get autoremove -y

# Essentials
sudo apt-get install -y build-essential make automake cmake 

# Docker: new install
sudo apt-get remove -y docker docker-engine docker.io containerd runc

sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io
