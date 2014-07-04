## MySQL 5.5 Dockerfile

### Usage

#### run

```
docker run -p 10022:22 -p 13306:3306 -it --rm taka0125/mysql:5.5
```

#### build

```
docker build -t <yourname>/<container-name> .
```

#### ssh login

```
ssh docker@<ip-address> -p 10022
```

- `password` is `hw3TKfFBfvmPk4RdxaJkCazMJrbmKe`

#### MySQL

```
mysql -h <ip-address> -u root -P 13306 -p
```

- `password` is `cJiiF6bWBz9zzwRDuAnUPmFKGYTpBa`

