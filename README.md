[This repo](https://github.com/alexalexyang/docker-workshop)


## Basic

### Dockerfile

[Basic tutorial](https://docs.docker.com/get-started/02_our_app/)


```
docker build -t docker-workshop .
```

### Docker container

```
docker run --name express-app -p 8000:3000 docker-workshop

docker run --rm --name express-app -p 8000:3000 -v $(pwd)/temp:/app/data docker-workshop

docker exec -it express-app /bin/sh

docker container kill -f express-app
```

## Other commands

-d: detached mode
--rm: delete container on quit

Keep container up for debugging: `docker run -d ubuntu tail -f /dev/null`


## Put it in [Docker hub](https://hub.docker.com/r/alexalexyang/public-repo)

```
docker tag docker-workshop alexalexyang/public-repo
docker push alexalexyang/public-repo  
```


## [Docker compose](https://docs.docker.com/compose/gettingstarted/)