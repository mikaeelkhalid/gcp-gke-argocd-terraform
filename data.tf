data "kubectl_file_documents" "namespace" {
  content = file("./manifests/argocd/namespace.yaml")
}

data "kubectl_file_documents" "argocd" {
  content = file("./manifests/argocd/install.yaml")
}

data "kubectl_file_documents" "my-nginx-app" {
  content = file("./manifests/argocd/my-nginx-app.yaml")
}