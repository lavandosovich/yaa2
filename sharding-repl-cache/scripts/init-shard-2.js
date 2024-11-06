rs.initiate(
  {
    _id : "shard2",
    members: [
      { _id : 0, host : "shard2-a-node:27020" },
      { _id : 1, host : "shard2-b-node:27021" }
    ]
  }
);
exit();