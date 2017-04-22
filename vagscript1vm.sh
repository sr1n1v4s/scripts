#!/bin/bash

sudo apt-get install virtualbox -y
sudo apt-get install vagrant -y

mkdir -p /home/devops/vagrant/getting_started/try-vm
touch /home/devops/vagrant/getting_started/try-vm/Vagrantfile

echo ' 
# -*- mode: ruby -*-
Vagrant.configure("2") do |config|
config.vm.define "web" do |web|
web.vm.box = "ubuntu/trusty64"
web.vm.hostname = "web"

web.vm.network "public_network" , bridge: "eno1"
web.vm.provision :shell, path: "bootstrap.sh"

web.vm.provider :virtualbox do |v|
v.customize ["modifyvm" , :id, "--memory" , 512]
end
end
end'   > /home/devops/vagrant/getting_started/try-vm/Vagrantfile

touch /home/devops/vagrant/getting_started/try-vm/bootstrap.sh

echo "#!/bin/bash
	apt-get update
	apt-get install apache2 -y
	service apache2 start" > /home/devops/vagrant/getting_started/try-vm/bootstrap.sh

cd /home/devops/vagrant/getting_started/try-vm
vagrant up
