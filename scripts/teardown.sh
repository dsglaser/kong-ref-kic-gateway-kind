#!/usr/bin/env bash
export KUBECONFIG=$HOME/.kube/config

# Get Current Directory
CURRENTDIR=`pwd`

# Delete kind cluster
kind delete cluster --name multiverse

# Bring down docker containers
cd ./keycloak-idp

# Call the appropriate docker or podman compose command
if command -v docker-compose &> /dev/null
then
    docker-compose down
else
    podman-compose down
fi

cd $CURRENTDIR
