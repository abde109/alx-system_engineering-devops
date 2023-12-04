server {
    listen 80 default_server;
    listen [::]:80 default_server;
    server_name _;
    add_header X-Served-By $hostname;
    
    location / {
        try_files $uri $uri/ =404;
    }
}
