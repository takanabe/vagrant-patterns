#
# Cookbook Name:: local-sudo
# Recipe:: default
#
# Copyright 2015, takanabe
#
# All rights reserved - Do Not Redistribute

case node[:platform]
when "centos", "redhat"
  node.set["authorization"]["sudo"]["groups"] = ["wheel"]
  node.set["authorization"]["sudo"]["users"] = ["vagrant"]
  node.set["authorization"]["sudo"]["passwordless"] = true
when "ubuntu"
  node.set["authorization"]["sudo"]["groups"] = ["admin"]
  node.set["authorization"]["sudo"]["users"] = ["vagrant"]
  node.set["authorization"]["sudo"]["passwordless"] = true
end

include_recipe "sudo"
