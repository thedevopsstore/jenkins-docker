# jenkins-docker
run Jenkins as container on a host

## Start the jenkins using docker-compose
### The below steps will build the docker image from Dockerfile and start the services
### you will find the admin passwords in the logs
```
git clone https://github.com/thedevopsstore/jenkins-docker.git

cd jenkins-docker

docker-compose up -d
```

### Fetch admin password

```
docker container logs jenkins-docker_jenkins_1

```

### Access jenkins from the public Ip of the host on port 8089

```
http://<public ip:8089>


