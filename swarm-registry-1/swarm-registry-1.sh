# create docker swarm manager
# check docker node status
docker node ls
# create registry image in swarm
docker service create --name registry --publish 5000:5000 registry
# check service registry
docker service ps registry
# pull image hello-world
docker pull hello-world
# new tag image hello-world first ( we want to save main hello-world image )
docker tag hello-world 127.0.0.1:5000/hello-world
# push docker image to registry
docker push 127.0.0.1:5000/hello-world
# path show repository in your docker service
/v2/_catalog
# pull image nginx
docker pull nginx
# new tag image nginx first ( we want to save main nginx image )
docker tag nginx 127.0.0.1:5000/nginx
# push docker image to registry
docker push 127.0.0.1:5000/nginx
# run nginx service with 5 replicas
docker service create --name nginx -p 80:80 --replicas 5 --detach=false 127.0.0.1:5000/nginx