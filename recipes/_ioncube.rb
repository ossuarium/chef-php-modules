#
# Cookbook Name:: php-modules
# Recipe:: _ioncube
#

include_recipe 'php-ioncube::install'

execute '/usr/sbin/php5enmod ioncube'
