
sh.addShard( "shard1/shard1-a-node:27018");
sh.addShard( "shard2/shard2-a-node:27020");

sh.enableSharding("somedb");
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } );

use somedb;

for(var i = 0; i < 1000; i++) db.helloDoc.insert({age:i, name:"ly"+i});

db.helloDoc.countDocuments();
