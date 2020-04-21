

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t baton0717/ubuntu .
	mkdir ~/df
	winpty docker run -it --name n1 -v ~/df:/var/www/html -p 80:80 baton0717/ubuntu

```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ea9ccebf7125        baton0717/ubuntu    "/bin/bash"         About a minute ago   Up About a minute                       c1

```

To test, ("nowage" is username. )
```
	echo "<h1>hi</h1>" > ~/df/index.html
	open 127.0.0.1
```
To Rollback
```
    docker rm c1 -f
    docker rmi baton0717/ubuntu
```
