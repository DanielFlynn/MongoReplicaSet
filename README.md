# MongoDB Replica Set
A Vagrantfile and config for launching a MongoDB Replica set. 


## Content

Contains a Vagrant file to provision 3 server instances. Each instance is apart of a private network, running on a 192.168.1.0,  network. Each instance is provisioned through Chef, installing Mongo from a recipe file within a cookbook. Mongod.conf file replaced with edited version from a template erb file. Mongod.service file also replaced with edited version from a template erb file. Host file replaced edited version containing host IP addresses for each DB instance. A shell script was used to run rs.initiate and input each replica set member. 

This Mongo Replica Set is completed automated and can be run using Vagrant Up

