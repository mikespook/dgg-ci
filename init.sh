#!/bin/env bash
set -e
# Update system
apt-get -y update
apt-get -y upgrade
apt-get -y install git gcc libc6-dev mercurial
# Install Go
tar xvzf /tmp/go.tar.gz -C /data/go 
gitreceive init
