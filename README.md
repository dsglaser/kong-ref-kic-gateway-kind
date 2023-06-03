# Kong API Gateway EE w/ KIC on a local KIND k8s cluster
This branch deploys a local kind k8s cluster and installs Kong API Gateway EE with Kong Ingress Controller(KIC).

## Requirements
This branch assumes the following commands and tools are installed:
1. kind
2. kubectl
3. openssl
4. docker
5. docker-compose
6. helm
7. python3
8. $KONG_LICENSE needs to be set to the local path of your kong license json file

## Clone Repo and Deploy
```powershell
cd $HOME
git clone https://github.com/Kong/kong-ref-kic-gateway-kind.git
cd ./kong-ref-kic-gateway-kind
git checkout powershell
source ./redeploy.sh
```

## Teardown
```powershell
./scripts/teardown.sh
```
