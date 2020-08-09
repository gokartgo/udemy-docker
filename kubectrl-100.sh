# check kubernetes version
kubectl version

# deploy image nginx service name my-nginx
# kubectl run can use before 1.18 they are create all but after 1.18 this command create only pod if we want to create deployment must use kubectl create deployment <name> --image <image>
kubectl run my-nginx --image nginx

# get pods that we deploy
kubectl get pods

# deployment controller create replicaset controller create pods

# get all layer of kubernetes that we are deploy
kubectl get all

# delete deployment controller
kubectl delete deployment my-nginx