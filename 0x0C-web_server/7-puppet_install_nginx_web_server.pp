# Puppet manifest to install and configure nginx

# Ensure nginx is installed
package { 'nginx':
  ensure => installed,
}

# Ensure nginx service is running
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

# Create a custom homepage
file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!',
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Configure nginx for redirect
file_line { 'nginx_redirect':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
  require => File['/var/www/html/index.html'],
  notify  => Service['nginx'],
}
