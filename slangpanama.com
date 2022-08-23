server{
    listen 80;
    server_name slangpanama.com;
   
      location / {
        include proxy_params;
        proxy_pass http://unix:/var/www/html/myproject.sock;
    }
}
