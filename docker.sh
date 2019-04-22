#!/usr/bin/bash

# sudo yum -y update
sudo yum -y install nano wget tree mc

#Ansible
sudo yum -y install epel-release
sudo yum -y install ansible
sudo rm /etc/ansible/ansible.cfg
sudo chmod 400 ~/.ssh/*.pem

#Docker
#1 Uninstall old versions
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

#2 Install required packages
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
# Use the following command to set up the stable repository
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# Install the latest version of Docker CE and containerd
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Start Docker
sudo systemctl start docker

# If you need more information, you can see here -> https://docs.docker.com/install/linux/docker-ce/centos/

