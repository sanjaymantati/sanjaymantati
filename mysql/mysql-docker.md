### Configure MySQL container

```
docker run --name publicmysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:8.0.22
```
* Publicmysql: name of the container
*  MYSQL_ROOT_PASSWORD: Password for root user
* mysql=tag: Here tag is the version of MySQL Server.

**Source** :
https://hub.docker.com/_/mysql

docker run --name publicmysql -v /home/dev37/mysql-data:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:8.0.22

docker-compose.yml