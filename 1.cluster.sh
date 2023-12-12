#!/bin/bash
kops create cluster \
    --cloud=aws \
    --name=ullagallu.cloud \
    --node-count=2 \
    --node-size=t3a.small \
    --node-volume-size=8 \
    --control-plane-count=1 \
    --control-plane-size=t3a.small \
    --control-plane-volume-size=8 \
    --zones=ap-south-1a \
    --state=s3://ullagallu.kops.cloud \
    --dns=public \
    --dns-zone=ullagallu.cloud \
    --networking=cilium
