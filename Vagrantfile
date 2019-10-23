# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
  config.ssh.dsa_authentication = false
  config.vm.synced_folder '.', '/vagrant', type: 'nfs'

  # VirtualBox.
  config.vm.define "virtualbox" do |virtualbox|
    virtualbox.vm.hostname = "opsview-centos7"
    virtualbox.vm.box = "file://builds/opsview-6-virtualbox-centos7.box"
    virtualbox.vm.network :private_network, ip: "192.168.33.10"

    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 4096
      v.cpus = 2
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--ioapic", "on"]
    end

  end

end
