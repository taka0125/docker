## Ubuntu Dockerfile

This repository contains **Dockerfile** of [Ubuntu](http://www.ubuntu.com/) for [Docker](https://www.docker.io/)'s [trusted build](https://registry.hub.docker.com/u/taka0125/ubuntu/) published to the public [Docker Registry](https://registry.hub.docker.com/).

### OS version

`Ubuntu 14.04`

### Included Application

- ssh
- supervisor
- vim

### Installation

1. Install [Docker](http://www.docker.com/).

2. Download [trusted build](https://registry.hub.docker.com/u/taka0125/ubuntu/) from public [Docker Registry](https://registry.hub.docker.com/): `docker pull taka0125/ubuntu:14.04`

   (alternatively, you can build an image from Dockerfile: `docker build -t="taka0125/ubuntu:14.04" github.com/taka0125/docker/tree/master/ubuntu/14.04`)

### Usage

- run

```
docker run -p 10022:22 -it --rm taka0125/ubuntu:14.04
```

- build

```
docker build -t <yourname>/<container-name> .
```

- ssh login

```
ssh docker@<ip-address> -p 10022
```

- `password` is `hw3TKfFBfvmPk4RdxaJkCazMJrbmKe`
