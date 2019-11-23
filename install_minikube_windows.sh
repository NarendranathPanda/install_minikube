#download v1.16 
#install kubectl by downloading 
https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/windows/amd64/kubectl.exe

#add the kubectl to your Bin Path

# Check the Version 
kubectl version

# To access any cluster 
# create config file at .kube folder  i.e C:\Users\npanda\.kube

# To check the cluster information 
kubectl cluster-info

# In case of error try the following command 

kubectl cluster-info dump

# minikube installation 

# for windows we need to install hyper-visor 
# download virtual box
https://www.virtualbox.org/wiki/Downloads
#download direct exe from this location (1.15)
https://github.com/kubernetes/minikube/releases/latest
# add this to your path
minikube start
#to delete 

minikube delete

# Once minikube is started 

#deploy hello minikube 
kubectl create deployment hello-minikube --image=k8s.gcr.io/echoserver:1.10

#expose the service 
kubectl expose deployment hello-minikube --type=NodePort --port=8080

# check the pod status 
kubectl get pod 


# get the url of the service 
minikube service hello-minikube --url 

# delete the pod 
kubectl delete service hello-minikube 
kubectl delete deployment hello-minikube 

# stop minikube 
minikube stop 

# delete minikube 
minikube delete 

# More on kubectl 

kubectl config use-context minikube 

# more minikube 
minikube addons list 


#minikube dashboard 
minikube dashboard 	

# To access any service (running on NodePort)
minikube service -n namespace  -url 

# to get the minikube ip (host ip )
minikube ip 

# to get the service url
kubectl get service $SERVICE --output='jsonpath="{.spec.ports[0].nodePort}"'


# minikube PV  (supports only hostpath 
https://kubernetes.io/docs/setup/learning-environment/minikube/











