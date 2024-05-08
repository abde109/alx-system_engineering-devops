# Puppet manifest to fix the WordPress settings file by replacing '.phpp' with '.php'

exec { 'fix-wordpress-php-extension':
  command => "/bin/sed -i 's/\\.phpp/\\.php/g' /var/www/html/wp-settings.php",
  onlyif  => "/bin/grep -q '\\.phpp' /var/www/html/wp-settings.php",
  path    => ['/bin', '/usr/bin'],
  notify  => Service['apache2'],
}

service { 'apache2':
  ensure => running,
  enable => true,
}
