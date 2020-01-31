docker container stop jupyter_docker
docker container rm jupyter_docker
docker build --no-cache -t jupyter_docker .
docker container run --publish 8888:8888 --detach --name jupyter_docker jupyter_docker  
docker logs jupyter_docker -f | grep "http://127.0.0.1:8888"