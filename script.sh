#Update the DEV cluster to latest K8s version
dcos kubernetes cluster update --cluster-name=dev/kubernetes-dev --package-version=2.2.2-1.13.5 --yes

#Scale up the DEV cluster to 2 private nodes
#Go into GUI and make the update.  Show that we can also scale the size of the kubelets

#Make the PROD cluster HA
#Go into the GUI and make the update to HA.

#Show how MKE keeps the clusters healthy in the event of failure
dcos task exec -it `dcos task | grep etcd-2 | awk '{print $5}'` bash -c 'kill -9 $(pidof etcd)'

#Show the proxy to PROD clusters
#Show that there is a nginx and an Apache running
#Show that we can connect to those apps through the EDGELB and dklb

#Kubernetes is really just a distributed application
#Kick off Kafka to show how easy it is to get a cluster
#Scale up Kafka to show the day 2 operations
