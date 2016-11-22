# API dev environment

Host: Vagrant VM Ubuntu 14.04

## How to build the image

```bash
docker build -t xzdbd/api .
```

## How to run a dev environment

```bash
./run.sh
```

## How to enable HTTP proxy in the container

```bash
service cow start
export http_proxy=http://127.0.0.1:7777
export https_proxy=http://127.0.0.1:7777
```