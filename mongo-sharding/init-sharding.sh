#!/bin/bash

set -x

docker exec -t mongoConfigSrv sh -c "mongosh < /scripts/init-config-server.js" &&

docker exec -t shard1 sh -c "mongosh --port 27018 --file=/scripts/init-shard-1.js" &&
docker exec -t shard2 sh -c "mongosh --port 27019 --file=/scripts/init-shard-2.js" &&

sleep 4 &&

docker exec -t mongos_router sh -c "mongosh --port 27020 < /scripts/init-router.js" 

set +x
