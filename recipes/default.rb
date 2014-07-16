#
# Cookbook Name:: php-modules
# Recipe:: default
#

include_recipe 'php::default'

node['php-modules']['modules'].each do |k, v|
  include_recipe "php-modules::_#{k}" if v
end
