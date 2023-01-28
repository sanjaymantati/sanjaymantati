# Docker image of : Sonarqube 

## Configuration
1. Default username: admin
2. Default password: admin

### For docker-compose.yml
1. Database used : postgresql.
    * DB : sonar
    > **Note**: This database is created from init.sql file. 

### For docker-compose2.yml
1. Database used : H2 (In memory) 

### Resources
1. https://hub.docker.com/_/sonarqube
2. https://appinventiv.com/blog/run-sonarqube-with-docker-compose/
3. https://stackoverflow.com/questions/42111566/elasticsearch-in-windows-docker-image-vm-max-map-count