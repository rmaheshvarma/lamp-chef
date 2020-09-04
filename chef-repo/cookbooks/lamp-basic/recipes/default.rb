#
# Cookbook:: lamp-basic
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
# Setup the LAMP stack on ubuntu 18.04
# I have refrred the following document "https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04"
#
#sudo apt update
#sudo apt install apache2
#
#Convert above statements to chef
#


apt_update 'update ubuntu packages' do
    ignore_failure true
    action :update
end

apt_package "apache2" do
   action  :install
end


# install php packages sudo apt install php libapache2-mod-php php-mysql
#Since we have multiple packages, we can install at a using loop concet. But as of now we will go one by one, later we will install usi# ng loop.
#

apt_package 'php' do
  action :install
end

apt_package "libapache2-mod-php" do
  action :install
end


apt_package "php-mysql" do
  action :install
end








