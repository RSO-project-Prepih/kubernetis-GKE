# kubernetis-GKE
In this repository you will find the files to deploy a kubernetes cluster  using helm in [GKE](https://cloud.google.com/kubernetes-engine/).
The cluster will be deployed in the region of europe-west1-d and will have 3 nodes. The cluster will be deployed with the version 1.11.2-gke.18 of kubernetes.
Currently the cluster deploys only one service, gallery-service. More services will be added in the future.
## Old version
if you want to see the deployment using kubectl and kubernetes manifest files you can see it in the folder [Old_Kubernetes_Config](C:\Users\Jakob\NUM_DOMACA_NALOGA\RSO-kubernetis-GKE\kubernetis-GKE\Old_Kubernetis_Config)
## Prerequisites
To connect to kubernetes you have to install [Google Cloud SDK](https://cloud.google.com/sdk/).And you have to install a google plugin for authentication.