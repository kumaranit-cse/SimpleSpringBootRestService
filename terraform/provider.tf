terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.17.0"
    }
  }
}

provider "kubernetes" {
    config_path    = "%USERPROFILE%/.kube/config"
    config_context = "minikube"
}