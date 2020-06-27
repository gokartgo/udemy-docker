# install registry image
docker container run -d -p 5000:5000 --name registry registry

# pull hello-world image
docker pull hello-world

# run hello-world image
docker run hello-world

# push image to docker registry in local

# new tag image hello-world first ( we want to save main hello-world image )
docker tag hello-world 127.0.0.1:5000/hello-world
# push docker image to registry
docker push 127.0.0.1:5000/hello-world
# remove image hello-world and hello-world tag
docker image rm hello-world
# stop container hello-world tag
docker container rm <hello-world tag>
docker image rm <hello-world tag>

# pull image from docker registry in local
docker pull 127.0.0.1:5000/hello-world

# try to volume registry
# stop and remove container of docker registry
docker container kill registry
docker container rm registry
# create new container with volume registry image
docker container run -d -p 5000:5000 --name registry -v $(pwd)/registry-data:/var/lib/registry registry
# try to push image to registry local
docker push 127.0.0.1:5000/hello-world

# install package manager tree for see all subfolder in folder
brew install tree
# show all find in folder registry-data
tree registry-data