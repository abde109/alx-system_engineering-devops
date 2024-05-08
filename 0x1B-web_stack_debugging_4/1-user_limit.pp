# 1-user_limit.pp
# Puppet manifest to increase file limits for the 'holberton' user

exec { 'set-hard-limit-holberton':
  command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/bin:/bin',
}

exec { 'set-soft-limit-holberton':
  command => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/bin:/bin',
}

