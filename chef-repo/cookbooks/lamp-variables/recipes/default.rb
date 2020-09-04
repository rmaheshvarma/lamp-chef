#
# Cookbook:: lamp-variables
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#


apt_update 'update ubuntu packages' do
    ignore_failure true
    action :update
end


packages = %w(apache2 php libapache2-mod-php php-mysql)

packages.each do |package_name|
  apt_package package_name do
    action :install
  end
end

