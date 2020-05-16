# create network frontend and backend driver overlay for can connect between host
docker network create --driver overlay frontend
docker network create --driver overlay backend

# create service follow with specification
docker service create --name vote -p 80:80 --network frontend --replicas 2 bretfisher/examplevotingapp_vote
docker service create --name redis --network frontend redis:3.2
docker service create --name worker --network frontend --network backend bretfisher/examplevotingapp_worker:java
docker service create --name db --network backend --mount type=volume,source=db-data,target=/var/lib/postgresql/data --env POSTGRES_HOST_AUTH_METHOD=trust postgres:9.4
docker service create --name result --publish 5001:80 --network backend bretfisher/examplevotingapp_result