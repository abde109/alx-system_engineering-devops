# Increases the amount of traffic an Nginx server can handle.

# This is useful for high traffic sites.
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
} ->

# Restart Nginx if the above exec is run.
exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
