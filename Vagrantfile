# -*- mode: ruby -*-
# vi: set ft=ruby :
required_plugins = ["vagrant-hostsupdater" , "vagrant-berkshelf"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin};vagrant #{ARGV.join(" ")}" unless Vagrant.has_plugin? plugin || ARGV[0] == 'plugin'
end


# Vagrant.configure("2") do |config|

#   rails.vm.box = "ubuntu/trusty64"
#   rails.vm.network "private_network", ip: "192.168.10.100"
#   rails.hostsupdater.aliases = ["development.local"]
#   # config.vm.provision :shell, path: "install_script.sh"
#   config.vm.synced_folder "../app" , "/home/ubuntu/app"

#   config.vm.provision "chef_solo" do |chef|
#     chef.cookbooks_path = ['cookbooks']
#     chef.run_list = ['recipe[node-server::default]']
#   end

#    config.vm.provision "shell", inline: "echo Hello"

#   config.vm.define "web" do |web|
#     web.vm.box = "ubuntu/trusty64"
#     config.vm.provision "shell", inline: "sudo apt-get update -y"
#     config.vm.provision "shell", inline: "sudo apt-get install nginx -y" #192.10.10.100
#   end

#   config.vm.define "db" do |db|
#     db.vm.box = "" #192.10.10.150
#     config.vm.provision "shell", inline: "sudo apt-get update -y"
#     config.vm.provision "shell", inline: "sudo apt-get -y install postgresql postgresql-contrib -y" #192.10.10.100
#   end
# end

Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo Hello"
  
  config.vm.define "rails" do |rails|
    rails.berkshelf.berksfile_path = "cookbooks/node-server/Berksfile"
    rails.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512"]
    end
    rails.vm.box = "ubuntu/trusty64"
    rails.vm.network "private_network", ip: "192.168.10.100"
    rails.hostsupdater.aliases = ["development.local"]
     # config.vm.provision "file", source: "nginx.default", destination: "nginx.default"
     rails.vm.synced_folder "../app", "/home/ubuntu/app"
     # config.vm.provision "shell", path: "provision.sh"
     rails.vm.provision "chef_solo" do |chef|
       chef.cookbooks_path = ['cookbooks']
       chef.run_list =['recipe[node-server::default-cookbook]']
     end
  end

  config.vm.define "db" do |db|
    db.berkshelf.berksfile_path = "cookbooks/postgresql/Berksfile"
    db.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512"]
    end
    db.vm.box = "ubuntu/trusty64"
    db.vm.network "private_network", ip: "192.168.10.150"
    db.hostsupdater.aliases = ["database.local"]
    db.vm.provision "chef_solo" do |chef|
      chef.cookbooks_path = ['cookbooks']
      chef.run_list =['recipe[postgresql::postgre-cookbook]']
    end
  end
end