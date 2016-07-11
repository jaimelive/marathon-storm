#!/bin/bash

# Storm Supervisor

envsubst <<EOF > $STORM_HOME/conf/storm.yaml
storm.zookeeper.servers:
    - "$STORM_ZOOKEEPER_SERVERS"
storm.zookeeper.port: $STORM_ZOOKEEPER_PORT
storm.zookeeper.root: "$STORM_ZOOKEEPER_ROOT"
storm.local.dir: "$STORM_LOCAL_DIR"

ui.port: $PORT0
EOF

cat $STORM_HOME/conf/storm.yaml
