#
# Cookbook Name:: php-modules
# Recipe:: _mcrypt
#

package 'php5-mcrypt'

execute '/usr/sbin/php5enmod mcrypt'
