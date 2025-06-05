docker rm -f $(docker ps -aq) // stop and remove all containers
docker rmi -f $(docker images -aq) // remove all images

sudo netstat -ntlp | grep 80 // check if port 80 is open