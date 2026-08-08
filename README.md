# terraform-k8s-helm

# add this block of code to provider.tf
```
provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }
}
```

# add code below to use:
```
module name {
  source     = "devdot4/helm/k8s"
  name       = "nginx-ingress-controller"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx-ingress-controller"
  namespace  = "default"
}
```