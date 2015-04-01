# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "devbox"
  config.vm.box = "ubuntu/trusty64"
  #config.vm.network "private_network", ip:"192.168.56.120"
  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.provider "virtualbox" do |v|
    #v.gui = true
    v.customize ["modifyvm", :id, "--memory", "1024"]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
    v.customize ["modifyvm", :id, "--cpus", "1"]
    v.customize ["modifyvm", :id, "--hwvirtex", "on"]
    v.customize ["modifyvm", :id, "--pae", "on"]
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
  end
end
