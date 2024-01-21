# Puppet manifest to fix the WordPress settings file by replacing '.phpp' with '.php'

exec { 'fix-wordpress-php-extension':
  # Command to replace '.phpp' with '.php' using sed
  command     => "/bin/sed -i 's/\\.phpp/\\.php/g' /var/www/html/wp-settings.php",

  # Only run the command if '.phpp' is found in the file
  onlyif      => "/bin/grep -q '\\.phpp' /var/www/html/wp-settings.php",

  # Specify the command path
  path        => ['/bin', '/usr/bin'],

  # Notify Apache service to restart if this exec is triggered
  notify      => Service['apache2'],
}

# Service resource for managing the Apache service
service { 'apache2':
  # Ensure that Apache is running
  ensure => running,

  # Enable Apache to start on boot
  enable => true,
}
