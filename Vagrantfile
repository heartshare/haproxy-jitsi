# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/buster64"
  # config.vm.network "forwarded_port", guest: 80, host: 8888
  # config.vm.network "forwarded_port", guest: 443, host: 8443
  config.vm.network "forwarded_port", guest: 10000, host: 10000
  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.network "private_network", ip: "172.16.0.20", virtualbox__intnet: "visio"

  config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end
  config.vm.provision "shell", path: "bootstrap.sh"
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
