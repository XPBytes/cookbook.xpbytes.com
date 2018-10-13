#
# Cookbook Name:: cookbook_xpbytes
# Recipe:: cron
#
# Copyright:: 2018, xpbytes, All Rights Reserved.

# For each application that is being deployed, update the crontab using whenever
# as long as whenever can be found in the bundle.
#
Array(node['applications'] || node['deploy']).each do |application|
  app = node['deploy'][application] || {}
  global_settings = app['global'] || {}
  environment = global_settings['environment'] || 'production'
  deploy_dir = global_settings['deploy_dir'] || "/srv/www/#{application}"
  deploy_path = "#{deploy_dir}/current"

  bash "update-crontab-#{application}" do
    cwd deploy_path
    user 'deploy'
    code "./bin/bundle exec whenever --set environment=#{environment} --update-crontab #{application}"
    only_if "cd #{deploy_path} && ./bin/bundle show whenever"
    environment ENV.to_h
  end
end
