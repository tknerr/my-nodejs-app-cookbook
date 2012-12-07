#
# Cookbook Name:: app-deploy
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nodejs"
include_recipe "git"
include_recipe "runit"


directory "/usr/local/node-apps/webserver" do
  action :create
  recursive true
end


git "/usr/local/node-apps/webserver" do
  repository "https://github.com/tknerr/chef-handson-nodejs-sample.git"
  reference "master"
  action :sync
end


runit_service "node-daemon"

