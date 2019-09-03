mongo
echo 'rs.initiate({
      _id: "rs0",
      members: [
         { _id: 0, host: "Mongo1:27017" },
         { _id: 1, host: "Mongo2:27017" },
         { _id: 2, host: "Mongo3:27017", arbiterOnly:false }]});' | mongo
