# jenkins-docker
run Jenkins as container on a host

## Start the jenkins using docker-compose
### The below steps will build the docker image from Dockerfile and start the services
### you will find the admin passwords in the logs
```
git clone https://github.com/thedevopsstore/jenkins-docker.git

cd jenkins-docker

chmod 666 /var/run/docker.sock

docker-compose up -d
```

### Fetch admin password

```
docker container logs jenkins-docker_jenkins_1

```

### Access jenkins from the public Ip of the host on port 8089

```
http://<public ip:8089>

```

### Create a jenkins Jobs

```
new Item > free style project 

build steps :

docker build -t lwplapbs/nodejsapp:${BUILD_NUMBER} ./nodejs-app

docker login -u lwplapbs -p 83ce5984-292c-403d-9879-71ae9ba4b73a

docker image push lwplapbs/nodejsapp:${BUILD_NUMBER}

docker-compose up -d

```







