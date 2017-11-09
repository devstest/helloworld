# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 5000, host: 8080

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.name = "webapp-dep"
  end

  config.vm.provision "shell", path: "deployment.sh"
  end
