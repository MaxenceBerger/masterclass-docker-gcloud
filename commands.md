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
- Connect to the cluster

```
Did in google cloud platform
```
- Create a Deployment resource of your react-web-app image previously  created. (Push on your repo the config deployment.yml file and note your  command to execute it on the commands.pdf file. The same for the next steps  below). 

```
kubectl apply -f ./deployment.yaml
```
- Check if it works: print your pods. 

```
kubectl get deployment
```
- Create a Service resource which will accept requests on the port 8989 and  which 
retargets requests on the Deployment previously created on the correct react web-app running port. 
```
kubectl apply -f ./service.yaml
```
- Check if it works: print your service. 

```
kubectl get service
```
- Create an Ingress resource which will accept outdoor requests on the port 80  to redirect it on the Service previously created on the port 8989. 
```
kubectl apply -f ./ingress.yaml
```
- Check if it works: print your Ingress. 
```
kubectl get ingress
```
- After few minutes, you can get the IP address of your Ingress previously  created (note it in commands.pdf). Try to target this IP using your favorite  browser. Normally at this step you have the website running and serving the  internet traffic. 
```
http://34.120.199.31
```
- Create an HPA resource to autoscale your Deployment resource like: min=3,  max=50, and autoscale when the CPU reach 65% of its capacity
```
kubectl apply -f ./hpa.yaml
```
- Check if it works: print your HPA. 
```
kubectl get hpa
```
