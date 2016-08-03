#!/bin/bash

# Storm Supervisor

envsubst <<EOF > $STORM_HOME/conf/storm.yaml
storm.zookeeper.servers:
    - "$STORM_ZOOKEEPER_SERVERS"
storm.zookeeper.port: $STORM_ZOOKEEPER_PORT
storm.zookeeper.root: "$STORM_ZOOKEEPER_ROOT"
storm.local.dir: "$STORM_LOCAL_DIR"

nimbus.thrift.port: 6627
nimbus.seeds: $NIMBUS_SEEDS

supervisor.slots.ports:
    - $PORT0
    - $PORT1
    - $PORT2
    - $PORT3
    
logviewer.port: $PORT4
EOF

cat $STORM_HOME/conf/storm.yaml
