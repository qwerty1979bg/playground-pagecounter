# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define name="app01" do |node|
    node.vm.box = "ubuntu/xenial64"
    node.vm.hostname = name
    node.vm.post_up_message = "app01 -> Started!'"
  end

  config.vm.define name="db01" do |node|
    node.vm.box = "ubuntu/xenial64"
    node.vm.hostname = name
    node.vm.post_up_message = "db01 -> Started!'"

    #install "redis-server"
    node.vm.provision "shell", path: "scripts/provision_db01.sh"
  end

end
