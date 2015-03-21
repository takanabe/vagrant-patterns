# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "vm1" do |vm1|
    vm1.vm.provider "virtualbox" do |v|
      v.name = "vm1"
    end
    # Please change any boxes you want to use
    vm1.vm.box = "ubuntu14_04"
    vm1.vm.hostname = "vm1"
    vm1.vm.network "private_network", ip: "192.168.33.10"

  end

end
