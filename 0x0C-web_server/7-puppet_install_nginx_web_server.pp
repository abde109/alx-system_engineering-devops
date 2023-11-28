class nginx_setup {
    # Ensure nginx is installed
    package { 'nginx':
        ensure => installed,
    }

    # Start and enable nginx service
    service { 'nginx':
        ensure    => running,
        enable    => true,
        require   => Package['nginx'],
    }

    # Serve a custom homepage
    file { '/var/www/html/index.html':
        ensure  => file,
        content => 'Hello World!',
        require => Package['nginx'],
        notify  => Service['nginx'],
    }

    # Configure nginx for redirect
    file_line { 'nginx_redirect':
        path    => '/etc/nginx/sites-available/default',
        line    => 'rewrite ^/redirect_me https://www.example.com/ permanent;',
        match   => '^rewrite ^/redirect_me',
        require => File['/var/www/html/index.html'],
        notify  => Service['nginx'],
    }

    # Restart nginx to apply changes
    exec { 'nginx_restart':
        command     => '/usr/sbin/service nginx restart',
        refreshonly => true,
    }
}

include nginx_setup
