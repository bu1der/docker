# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_IMAGE = "centos/7"
RAM = "2024"
CPU = "2"
NETWORK = "192.168.56.5"


Vagrant.configure("2") do |config|

    config.vm.define "docker" do |docker|
      docker.vm.box = BOX_IMAGE
      docker.vm.hostname = "docker"
      docker.vm.network :private_network, ip: NETWORK
      docker.vm.provider "virtualbox" do |vb|
        vb.memory = RAM
        vb.cpus = CPU
      end
      docker.vm.provision "shell", path: "start.sh"            
      docker.vm.provision "file", source: "docker.yml", destination: "/vagrant"
      docker.vm.provision "file", source: "static.yml", destination: "/vagrant"
      docker.vm.provision "file", source: "Dockerfile", destination: "/vagrant"
    end
end