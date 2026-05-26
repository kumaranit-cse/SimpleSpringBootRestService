resource "kubernetes_service" "spring-boot-demo-service" {
  metadata {
    name = "spring-boot-demo-service"
  }

  spec {
    selector = {
      app = "spring-boot-demo"
	  version = "v1"
    }

    port {
      port        = 8080
      target_port = 8080
    }

    type = "NodePort"
  }
}

## kubectl expose deployment spring-boot-demo-depl --type=NodePort --port=8080