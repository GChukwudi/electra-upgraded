#!/bin/bash

BESU_HOME=/opt/besu
DATA_DIR=./data
GENESIS_FILE=../../config/genesis.json

besu \
  --data-path=$DATA_DIR \
  --genesis-file=$GENESIS_FILE \
  --network-id=2027 \
  --rpc-http-enabled \
  --rpc-http-host=0.0.0.0 \
  --rpc-http-port=8547 \
  --rpc-ws-enabled \
  --rpc-ws-host=0.0.0.0 \
  --rpc-ws-port=8548 \
  --p2p-port=30304 \
  --bootnodes=enode://INEC_NODE_ENODE@localhost:30303 \
  --logging=INFO \
  --host-allowlist="*"