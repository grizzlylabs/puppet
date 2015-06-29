#!/bin/bash
# Installs puppet on CentOS 7
# Uses defaults

PUPPET_GID='2000'

sudo groupadd -g "$PUPPET_GID" puppet
sudo usermod -a -G puppet "$USER"

sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
sudo yum install puppet -y

sudo mkdir -p /etc/puppet/modules/puppet/manifests
sudo mkdir -p /etc/puppet/manifests

sudo chown -R root:puppet /etc/puppet 
sudo chmod -R 770         /etc/puppet 
sudo chmod -R g+s         /etc/puppet 


