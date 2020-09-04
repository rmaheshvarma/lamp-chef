#
# Cookbook:: conditional-lamp
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#


apache_package  = node['conditional-lamp']['apache2']
curl_package    = node['conditional-lamp']['curl']
php_packages    = node['conditional-lamp']['php_packages']


if platform?('ubuntu')
    apt_update 'update ubuntu packages' do
        ignore_failure true
        action :update
    end
end


apt_package apache_package do
  action :install
end

apt_package curl_package do
  action :install
end


#php_packages = %w(php libapache2-mod-php php-mysql)

php_packages.each do |php_packages_name|
  apt_package php_packages_name do
    action :install
  end
end


