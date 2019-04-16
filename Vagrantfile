# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_IMAGE = "centos/7"
AM_RAM = "2024"
AM_CPU = "2"
NETWORK = "192.168.56.5"


Vagrant.configure("2") do |config|

    config.vm.define "docker" do |docker|
      docker.vm.box = BOX_IMAGE
      docker.vm.hostname = "docker"
      docker.vm.network :private_network, ip: NETWORK
      docker.vm.provider "virtualbox" do |vb|
        vb.memory = AM_RAM
        vb.cpus = AM_CPU
      end
      docker.vm.provision "shell", path: "docker.sh"
    end
end