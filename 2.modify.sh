#!/bin/bash
kops get cluster -o yaml > cluster.yaml
sed -i '/instanceGroup: control-plane-ap-south-1a/a \ \ \ \ \ \ volumeSize: 4' cluster.yaml
kops replace -f cluster.yaml
rm -rf cluster.yaml
