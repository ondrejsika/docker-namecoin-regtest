# Namecoin Regtest in Docker

- author: Ondrej Sika <ondrej@ondrejsika.com>
- license: MIT <https://ondrejsika.com/license/mit.txt>


## Build container

```
./build.sh
```


## Run container

Namecoin relay listen on port __28334__ and RPC on port __28336__.

```
./run.sh
```


## Examples

### namecoin-cli (from container)

```
docker exec namecoin-regtest namecoin-cli getinfo
```


### RPC

```
curl --data '{"jsonrpc": "1.0", "id":"1", "method": "getinfo", "params": [] }' http://nmcrpc:nmc@127.0.0.1:28232
```
