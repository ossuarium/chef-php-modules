#
# Cookbook Name:: php-modules
# Recipe:: default
#
# Copyright 2014-2015 OurTownRentals.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
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
