#
# Cookbook Name:: php-modules
# Recipe:: _imap
#

package 'php5-imap'

execute '/usr/sbin/php5enmod imap'
