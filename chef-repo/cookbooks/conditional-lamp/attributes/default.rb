if platform?('ubuntu')
  default['conditional-lamp']['apache2'] = "apache2"
  default['conditional-lamp']['curl'] = "curl"
  default['conditional-lamp']['php_packages'] = %w(php libapache2-mod-php php-mysql)
else 
   default['conditional-lamp']['php_packages'] = nil
end


