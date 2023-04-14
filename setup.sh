#!/bin/bash

# Upgrade system and install the following packages:
apt update
apt upgrade -y
apt install -y make docker.io awscli

# Install Go
wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.20.1.linux-amd64.tar.gz
rm ./go1.20.1.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

# Install Hugo
wget https://github.com/gohugoio/hugo/releases/download/v0.110.0/hugo_0.110.0_Linux-64bit.tar.gz
tar -C /usr/local/bin -xzf hugo_0.110.0_Linux-64bit.tar.gz
rm ./hugo_0.110.0_Linux-64bit.tar.gz

# Install Node.js and npm
curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y nodejs

# Install netlify-cli
npm install netlify-cli -g