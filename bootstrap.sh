#!/usr/bin/env bash
#DNA nexus sdk on ubuntu 12.04
/bin/bash -c "echo 'deb http://dnanexus-apt-prod.s3.amazonaws.com/ubuntu precise/amd64/' > /etc/apt/sources.list.d/dnanexus.list"
wget https://wiki.dnanexus.com/images/files/ubuntu-signing-key.gpg
apt-key add ubuntu-signing-key.gpg
apt-get update
apt-get install -y dx-toolkit
echo "source /etc/profile.d/dnanexus.environment" >> .bashrc
