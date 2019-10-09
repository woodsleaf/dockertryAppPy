# dockertryAppPy

Tempalte App on python 3 with flask and redis.

## Build container

`docker build --tag=friendlyhello .`

## Start container

`docker run -p 4000:80 friendlyhello`

## Go

[Link on local App](http://localhost:4000/)

### Post Script

Now `docker-compose.yml` not used, just put.
Not work Redis: `Visits: cannot connect to Redis, counter disabled`, may be course using other version python image, in example `2.7-slim`.
