# create container without health check
docker container run --name p1 -e POSTGRES_PASSWORD=password -d postgres
# create container with health check "pg_isready up to default image for health cmd" -U is username of postgres default is postgres
docker container run --name p2 -e POSTGRES_PASSWORD=password -d --health-cmd="pg_isready -U postgres || exit 1" postgres
# show different of run with health check and without health check
docker ps
# after 30 second use docker ps again for check health
docker ps
# create service with health check wait 30 second for health check after that service start
docker service create --name p2 -e POSTGRES_PASSWORD=password --health-cmd="pg_isready -U postgres || exit 1" postgres