# postgres-mtls
```
sudo sh mtls.txt
```
```
docker-compose build
```
```
docker-compose up -d; docker-compose logs -f
```
```
docker run -it --rm --name postgres-client \
  --entrypoint= --net=host -v $PWD:/work -w /work postgres:16 bash
```
```
psql --host=172.17.0.1 --port=54321 --user=postgres \
  "sslmode=verify-ca sslrootcert=./ssl/root.crt sslcert=./ssl/postgresql.crt sslkey=./ssl/postgresql.key"
```
