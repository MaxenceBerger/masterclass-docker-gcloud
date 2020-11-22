# Projet : **Cloud/Docker/Kubernetes**

## Commands


- Build your image

```
docker build -t react-web-app
```

- Test if it works: Run a container locally in background from your image through the local port 8989


```
docker run -d -p 8989:3000 react-web-app
```
- Delete your container


```
docker stop (id container)
docker rm (id container)
```

- Send your image in your account on the public registry Docker-Hub (https://hub.docker.com/) and note in commands.pdf your image link.


```
docker login
docker tag react-web-app (id docker)/react-web-app
docker push (id docker)/react-web-app
```
