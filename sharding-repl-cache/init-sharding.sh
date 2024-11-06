#!/bin/bash

set -x

docker exec -t mongoConfigSrv sh -c "mongosh < /scripts/init-config-server.js" &&

docker exec -t shard1-a-node sh -c "mongosh --port 27018 --file=/scripts/init-shard-1.js" &&
docker exec -t shard2-a-node sh -c "mongosh --port 27020 --file=/scripts/init-shard-2.js" &&

sleep 4 &&

docker exec -t mongos_router sh -c "mongosh --port 27022 < /scripts/init-router.js" 

set +x
