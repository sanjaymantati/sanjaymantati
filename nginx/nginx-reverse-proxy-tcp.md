# Use nginx as reverse proxy for tcp protocol.

1. Open /etc/nginx/nginx.conf

2. Append  below code in the file.   
   ```json   
   stream {
   	upstream db {
   		server mysql-v4-testing-sl.cluster-c4m83mrwpmik.us-east-1.rds.amazonaws.com:3306;
   	}
   
   	server {
   		listen 3308;
   		proxy_pass db;
   	}
   }
   ```
3. The tcp stream is proxied to localhost on 3308 port.
4.  If we try to connect database with credentials on localhost:3308, it'll redirect stream to provided mysql server (In our case).


