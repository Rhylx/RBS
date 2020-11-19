server {
	listen 80;
	server_name git.rpaegelow.com www.git.rpaegelow.com;
	location / {
		proxy_pass   http://localhost:3000;	
	}
}
