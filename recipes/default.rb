#
# Cookbook Name:: php-modules
# Recipe:: default
#

# This is required to for PHP 5.4 on Ubuntu.
# @todo Remove this when [php issue 76] is closed.
# [php issue 76]: https://github.com/opscode-cookbooks/php/issues/76
if platform?('ubuntu') && node['platform_version'].to_f >= 14.04
  node.default['php']['ext_conf_dir'] = '/etc/php5/mods-available'
end

include_recipe 'php::default'

node['php-modules']['modules'].each do |k, v|
  include_recipe "php-modules::_#{k}" if v
end
