#
# Cookbook Name:: php-modules
# Recipe:: default
#

include_recipe 'php::default'

node['php-modules']['modules'].each do |mod|
  include_recipe "php-modules::_#{mod}"
end
