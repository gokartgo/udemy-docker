#create service
docker service create -p 8088:80 --name web nginx:1.13.7
#scale from 1 replica to 5 replica
docker service scale web=5
#update image of service you can downgrade and update version of image
docker service update --image nginx:1.13.6 web
#update publish port this cmd is remove first after assign new publish port
docker service update --publish-rm 8088 --publish-add 9090:80 web
#separate docker container to new host
#example first you have 2 host and 3 replicas 1 host have 2 replica 1host have 1 replica
#after you get new one host use this cmd for scale 1 host per replica
docker service update --force web