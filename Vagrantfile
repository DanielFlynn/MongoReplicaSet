# Install required plugins
required_plugins = %w( vagrant-hostsupdater vagrant-berkshelf )
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|

  config.vm.define "Mongo3" do |db|
    db.vm.box = "ubuntu/xenial64"
    db.vm.hostname = "Mongo3"
    db.vm.network "private_network", ip: "192.168.1.4"
    db.vm.synced_folder "environment/db", "/home/ubuntu/environment"
    db.vm.provision "chef_solo" do |chef|
      chef.add_recipe "mongodb::default"
      chef.arguments = "--chef-license accept"
  end
end
  config.vm.define "Mongo2" do |db|
    db.vm.box = "ubuntu/xenial64"
    db.vm.hostname = "Mongo2"
    db.vm.network "private_network", ip: "192.168.1.3"
    db.vm.synced_folder "environment/db", "/home/ubuntu/environment"
    db.vm.provision "chef_solo" do |chef|
      chef.add_recipe "mongodb::default"
      chef.arguments = "--chef-license accept"
  end
end
  config.vm.define "Mongo1" do |db|
    db.vm.box = "ubuntu/xenial64"
    db.vm.hostname = "Mongo1"
    db.vm.network "private_network", ip: "192.168.1.2"
    db.vm.synced_folder "environment/db", "/home/ubuntu/environment"
    db.vm.provision "chef_solo" do |chef|
      chef.add_recipe "mongodb::default"
      chef.arguments = "--chef-license accept"
    db.vm.provision "shell", path: "environment/db/mongo.sh", privileged: false

end
end
end
