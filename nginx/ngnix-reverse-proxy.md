#Use nginx as reverse proxy

1. Install nginx in system.

    > **Link:**  
    >   - https://phoenixnap.com/kb/nginx-reverse-proxy
    >   - https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-18-04
    >   - https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04

2. Create a configuration of server block for reverse proxy.
    - ```cd /etc/nginx/sites-available/```
    - ```sudo vi custom_server.conf```

3. Write down below code in the file.   
   ```json   
   server {
           
            listen 80;
           
            location / {
           
            proxy_pass http://my_server;
           
            }
           
   }
   ```
4. Unlink  configuration file of old server block. In case, linked configuration file is the default one then use below command.
    
    * ```sudo unlink /etc/nginx/sites-enabled/default```
5. Link created our new custom_server.conf file of server block.
    * ```sudo ln -s /etc/nginx/sites-available/custom_server.conf /etc/nginx/sites-enabled/custom_server.conf```
    
6. Test our new configuration file and Restart Nginx
    * ```sudo service nginx configtest```
    * ```sudo service nginx restart```
7. hit http://your_ip


*Source* - https://phoenixnap.com/kb/nginx-reverse-proxy

