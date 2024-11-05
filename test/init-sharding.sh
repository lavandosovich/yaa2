#!/bin/bash

docker-compose exec mongoConfigSrv sh -c "mongosh < /scripts/init-config-server.js" &&

docker-compose exec shard1 sh -c "mongosh < /scripts/init-shard-1.js" &&
docker-compose exec shard2 sh -c "mongosh < /scripts/init-shard-2.js" &&

docker-compose exec mongos_router sh -c "mongosh < /scripts/init-router.js" 
