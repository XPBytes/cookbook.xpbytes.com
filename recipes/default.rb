#
# Cookbook:: cookbook_xpbytes
# Recipe:: default
#
# Copyright:: 2018, xpbytes, All Rights Reserved.

include_recipe 'build-essential::default'
# include_recipe "imagemagick"
# include_recipe "imagemagick::devel"

node.default['packages-cookbook'] = []
node.default['build-essential']['compile_time'] = true

include_recipe 'packages'

ENV['GIT_SHA'] = `git rev-parse HEAD`.chomp rescue 'unknown'

chef_gem 'mini_racer' do
  compile_time true
  action :install
end
