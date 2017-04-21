#
# Cookbook:: node-server
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# include_recipe 'postgresql::client'
# recipe[postgresql::client]
include_recipe 'apt'





# package 'postgresql'
# package 'postgresql-contrib'
##############
package 'nginx' do
	action :install
end

service 'nginx' do
	supports status: true, restart: true, reload: true
	action [:enable, :start]
end

template '/etc/nginx/sites-available/default' do
	source 'nginx.default.erb'
	notifies :reload, "service[nginx]"
end

include_recipe 'git'
include_recipe 'nodejs'
include_recipe 'bjn_ruby'
