# Puppet manifest to configure SSH client settings
File { owner => 0, group => 0, mode => '0644', }

# Ensure the SSH config file exists
file { '/etc/ssh/ssh_config':
  ensure => file,
}

# Configure the SSH client to use the private key ~/.ssh/school
file_line { 'Declare identity file':
  path => '/etc/ssh/ssh_config',
  line => 'IdentityFile ~/.ssh/school',
  match => '^IdentityFile',
  ensure => present,
}

# Configure the SSH client to refuse password authentication
file_line { 'Turn off passwd auth':
  path => '/etc/ssh/ssh_config',
  line => 'PasswordAuthentication no',
  match => '^PasswordAuthentication',
  ensure => present,
}

