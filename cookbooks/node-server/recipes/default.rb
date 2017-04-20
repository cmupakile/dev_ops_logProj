#
# Cookbook:: node-server
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# include_recipe 'postgresql::client'
# recipe[postgresql::client]
# include_recipe 'apt'

package 'postgresql'
package 'postgresql-contrib'