#
# Cookbook Name:: chef-provisioning
# Recipe:: provision_jenkins
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
require 'chef/provisioning' 

with_driver 'vagrant'

options = {
    vagrant_options: {
        'vm.box' => 'ubuntu/trusty64',
        'vm.box_check_update' => false,
        'vm.network' => ':forwarded_port, guest: 8080, host: 4567, auto_correct: true',
   }
}
   machine 'jenkins-server' do
   machine_options options
  
   role 'jenkins'
 end
