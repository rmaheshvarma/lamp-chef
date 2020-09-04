#
# Cookbook:: variable-lamp
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
# LAMP stack with varaible 
#
# sudo apt update

apt_update 'updating the ubuntu' do
   ignore_failure true
   action :update
end


# Decalre the varaible which we have define in attributes, in attributes generally we define like "default".
# But when we want define in recipe we have to decalre like "node" like below
#
apache2_package = node['variable-lamp']['apache2']
curl_package    = node['variable-lamp']['curl']
php_packages    = node['variable-lamp']['php_packages']




#sudo apt install apache2
#
#
apt_package apache2_package do
   action :install
end

#sudo apt install curl
#
apt_package curl_package do
  action :install
end


# Installing Multiple packages sudo apt install php libapache2-mod-php php-mysql
#
#
#php_packages = %w(php libapache2-mod-php php-mysql)

php_packages.each do |php_packages_name|
  apt_package php_packages_name do
    action :install
  end
end


