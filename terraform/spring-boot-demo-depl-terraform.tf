resource "kubernetes_deployment" "spring-boot-demo-depl" {
  metadata {
    name = "spring-boot-demo-depl"
    labels = {
      app = "spring-boot-demo"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "spring-boot-demo"
      }
    }

    template {
      metadata {
        labels = {
          app = "spring-boot-demo"
		  version = "v1"
        }
      }

      spec {
        container {
          image = "anitkumar224/workrepository:spring-boot-demo"
          name  = "spring-boot-demo-depl"

          port {
            container_port = 8080
          }
        }
      }
    }
  }
}
