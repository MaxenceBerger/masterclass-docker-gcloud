# Projet : **Cloud/Docker/Kubernetes**
![enter image description here](https://zupimages.net/up/20/47/mjn4.jpg) 


## Sujet du projet
You have to clone this repo: https://github.com/lholmquist/react-web-app (please read the README, you have all information about how to install its dependencies, launch it, build it and deploy it)

From this part please note all your commands in a pdf document named commands.pdf .
(https://github.com/MaxenceBerger/masterclass-docker-gcloud/blob/master/commands.md)

You have to centenaries the react-web-app using Docker.

- Build your image (push your Dockerfile in the repo + note your commands in commands.pdf)

- Test if it works: Run a container locally in background from your image through the local port 8989

- Delete your container

- Send your image in your account on the public registry Docker-Hub (https://hub.docker.com/) and note in commands.pdf your image link.

Now you have to create a Google account to use the service GKE (Google Kubernetes Engine: https://cloud.google.com/kubernetes-engine). - Create a cluster in the zone ‘europe-west1-b’

- Connect to the cluster (you have several solutions:

https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-access-for kubectl, https://cloud.google.com/anthos/gke/docs/aws/how-to/connecting-to a-cluster, …)

- Create a Deployment resource of your react-web-app image previously created. (Push on your repo the config deployment.yml file and note your command to execute it on the commands.pdf file. The same for the next steps below).

- Check if it works: print your pods.

- Create a Service resource which will accept requests on the port 8989 and which

retargets requests on the Deployment previously created on the correct react web-app running port.

- Check if it works: print your service.

- Create an Ingress resource which will accept outdoor requests on the port 80 to redirect it on the Service previously created on the port 8989.

- Check if it works: print your Ingress.

- After few minutes, you can get the IP address of your Ingress previously created (note it in commands.pdf). Try to target this IP using your favorite browser. Normally at this step you have the website running and serving the internet traffic.

- Create an HPA resource to autoscale your Deployment resource like: min=3, max=50, and autoscale when the CPU reach 65% of its capacity - Check if it works: print your HPA.

All your commands for each step (with the link of your published image, and the IP address of your cluster Ingress) must to be in the file commands.pdf at the root of your repo. All your config files (Dockerfile and .yml files: deployment.yml, services.yml and ingress.yml) should be at the root of your repo.
