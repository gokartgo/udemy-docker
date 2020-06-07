# docker-compose.override is auto override file docker-compose.yml
docker-compose up -d
# show detail image that override
docker inspect swarm-stack-3_drupal_1
# override docker-compose by specific file
docker-compose -f docker-compose.yml -f docker-compose.test.yml up -d
# show detail image that override
docker inspect swarm-stack-3_drupal_1
# show file that combine
docker-compose -f docker-compose.yml -f docker-compose.prod.yml config
# export docker-compose that combine to output.yml
docker-compose -f docker-compose.yml -f docker-compose.prod.yml config > output.yml


