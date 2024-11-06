rs.initiate(
    {
      _id : "config_server",
      configsvr: true,
      members: [
        { _id : 0, host : "mongoConfigSrv:27017" }
      ]
    }
);
exit();