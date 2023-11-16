#!/bin/bash
kops create cluster \
    --cloud=aws \
    --name=$NAME \
    --node-count=$NODE_COUNT \
    --node-size=$NODE_SIZE \
    --node-volume-size=$NODE_VOLUME_SIZE \
    --control-plane-count=$MASTER_COUNT \
    --control-plane-size=$MASTER_SIZE \
    --control-plane-volume-size=$MASTER_VOLUME_SIZE \
    --zones=$ZONES \
    --state=$KOPS_STATE_STORE \
    --dns=public \
    --dns-zone=ullagallu.cloud \
    --networking=cilium
