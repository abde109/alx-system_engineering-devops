# This is a hack to get around the fact that the nginx module doesn't support

# This is a hack to get around the fact that the nginx module doesn't support
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/bin:/usr/bin'
}

# This is a hack to get around the fact that the nginx module doesn't support
exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}