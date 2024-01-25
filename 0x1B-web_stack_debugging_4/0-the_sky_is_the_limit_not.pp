# Increases the amount of traffic an Nginx server can handle.

# This is useful for high traffic sites.
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/:/usr/sbin/',
  onlyif  => 'grep -q "15" /etc/default/nginx',
} ->

# Restart Nginx if the above exec is run.
exec { 'nginx-restart':
  command => 'service nginx restart',
  path    => '/usr/local/bin/:/bin/:/usr/sbin/',
  refreshonly => true,
}
