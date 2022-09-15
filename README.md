
## Basic

```
docker run --name express-app -p 8000:3000 docker-workshop

docker exec -it express-app /bin/sh

docker container kill express-app
```

-d: detached mode
--rm: delete container on quit



Keep container up for debugging: `docker run -d ubuntu tail -f /dev/null`


## Put it [Docker hub](https://hub.docker.com/r/alexalexyang/public-repo)

```
docker tag docker-workshop alexalexyang/public-repo
docker push alexalexyang/public-repo  
```