# kubernetis-GKE
In this repository you will find the files to deploy a kubernetes cluster in [GKE](https://cloud.google.com/kubernetes-engine/).
The cluster will be deployed in the region of europe-west1-d and will have 3 nodes. The cluster will be deployed with the version 1.11.2-gke.18 of kubernetes.
Currently the cluster deploys only one service, gallery-service. More services will be added in the future.

## Prerequisites
To connect to kubernetes you have to install [Google Cloud SDK](https://cloud.google.com/sdk/).And you have to install a google plugin for authentication.