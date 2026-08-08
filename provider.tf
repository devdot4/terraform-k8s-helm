provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }

  registries = [
    {
      url      = "oci://localhost:5000"
      username = "username"
      password = "password"
    },
    {
      url      = "oci://private.registry"
      username = "username"
      password = "password"
    }
  ]
}
