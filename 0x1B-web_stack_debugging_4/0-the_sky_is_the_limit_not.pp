# 0-the_sky_is_the_limit_not.pp
# Puppet manifest to increase Nginx's capacity to handle high concurrency by tuning the worker connections

class nginx_tuning {

  # Ensure the nginx service is running
  service { 'nginx':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/nginx/nginx.conf'],
  }

  # Modify nginx.conf to increase worker connections and set multi_accept
  file { '/etc/nginx/nginx.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('nginx/nginx.conf.erb'),
    notify  => Service['nginx'],
  }

  # Ensure the nginx service is reloaded to apply the new configuration
  exec { 'reload-nginx':
    command     => '/usr/sbin/service nginx reload',
    refreshonly => true,
    subscribe   => File['/etc/nginx/nginx.conf'],
  }
}

include nginx_tuning
