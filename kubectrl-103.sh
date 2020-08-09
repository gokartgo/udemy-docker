kubectl get pods
# logs detail all pods
kubectl logs deployment/my-apache
# logs latest detail 1 line
kubectl logs deployment/my-apache --follow --tail 1
# get pods and show label
kubectl get pods --show-labels
# logs from label of pods
kubectl logs -l run=my-apache
# show detail of pod like docker inspect
kubectl describe pod/my-apache-6b4dc47d85-nmx74
# show all pod in type watch mode
kubectl get pods -w
# delete pod but deployment will auto recreate new pod
kubectl delete pod my-apache-6b4dc47d85-nmx74
# if you want to delete all pod in deployment
kubectl delete deployment my-apache