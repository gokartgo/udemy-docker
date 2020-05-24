# create secret from file txt
docker secret create psql_user psql_user.txt
# create secret from cmd
echo "myDBpassWORD" | docker secret create psql_pass -

docker secret ls

docker secret inspect <secret name>
# create service and set env from secret
docker service create --name psql --secret psql_user --secret psql_pass -e POSTGRES_PASSWORD_FILE=/run/secrets/psql_pass -e POSTGRES_USER_FILE=/run/secrets/psql_user postgres
# show where container run
docker service ps <service name>
# execute container
docker exec -it <container name of service> bash
# log status of container
docker logs <container name>
# delete secret in service
docker service update --secret-rm <secret name> <service name>
# add secret to service
docker service update --secret-add <secret name> <service name>