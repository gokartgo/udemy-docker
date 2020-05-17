docker stack deploy -c example-voting-app-stack.yml voteapp

docker stack ls

docker stack ps voteapp

docker stack services voteapp

# change replicas of vote serice from 2 to 5 for test update ymal

docker stack deploy -c example-voting-app-stack.yml voteapp