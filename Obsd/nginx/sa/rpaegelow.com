server {
	#listen 443 ssl;
	#listen [::]:443 ssl;
	listen 80;

	server_name rpaegelow.com www.rpaegelow.com;

	root /var/www/html;
	index index.html ;
}
