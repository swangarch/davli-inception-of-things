#!/bin/bash

set -e

# update system
apt-get update -y
apt-get upgrade -y

# install curl
apt-get install -y curl

# install K3s server
curl -sfL https://get.k3s.io | sh -s - server \
  --write-kubeconfig-mode 644 \
  --node-ip 192.168.56.110

# wait a bit
sleep 5

# get token for worker
cat /var/lib/rancher/k3s/server/node-token > /vagrant/node-token

echo "K3s server installed"