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
  --rpc-http-port=8545 \
  --rpc-http-cors-origins="*" \
  --rpc-ws-enabled \
  --rpc-ws-host=0.0.0.0 \
  --rpc-ws-port=8546 \
  --p2p-port=30303 \
  --miner-enabled \
  --miner-coinbase=0xINEC_VALIDATOR_ADDRESS \
  --min-gas-price=0 \
  --logging=INFO \
  --host-allowlist="*"