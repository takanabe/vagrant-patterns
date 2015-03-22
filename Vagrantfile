# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "vm1" do |vm1|
    vm1.vm.provider "virtualbox" do |v|
      v.name = "vm1"
    end
    # Please change any boxes you want to use
    vm1.vm.box = "centos6.5"
    # vm1.vm.box = "ubuntu14_04"
    vm1.vm.hostname = "vm1"
    vm1.vm.network "private_network", ip: "192.168.33.10"

    # Auto provisioning setting
    config.vm.provision :shell, path: "bootstrap.sh"

    vm1.vm.provision "chef_solo" do |chef|
      chef.cookbooks_path = ["./site-cookbooks","./cookbooks"]
      chef.data_bags_path = "./data_bags"
      chef.add_recipe "local-users"
      chef.add_recipe "openssh"
      chef.add_recipe "local-sudo"

      # Set attribute to overide sshd_config
      chef.json = {
        "openssh" => {
          "server" => {
            "permit_empty_passwords" => "yes",
            "use_p_a_m" => "no"
          }
        }
      }
    end
  end
end
