# deploy image httpd service name my-apache
kubectl run my-apache --image httpd

# start a new deployment for one replica/pod
# kubectl run my-apache --image httpd

# scale it up with another pod
kubectl scale deploy/my-apache --replicas 2