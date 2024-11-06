rs.initiate(
    {
      _id : "shard1",
      members: [
        { _id : 0, host : "shard1-a-node:27018" },
        { _id : 1, host : "shard1-b-node:27019" }
      ]
    }
);
exit();