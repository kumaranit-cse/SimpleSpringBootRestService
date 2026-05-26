resource "kubernetes_namespace" "myminikube" {
    metadata {
        name = "myminikube"
    }
}