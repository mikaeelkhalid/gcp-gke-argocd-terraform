resource "google_service_account" "main" {
  account_id   = "${var.cluster_name}-sa"
  display_name = "GKE Cluster ${var.cluster_name} Service Account"
}

resource "time_sleep" "wait_30_seconds" {
  depends_on      = [google_container_cluster.main]
  create_duration = "30s"
}

resource "kubectl_manifest" "namespace" {
  count              = length(data.kubectl_file_documents.namespace.documents)
  yaml_body          = element(data.kubectl_file_documents.namespace.documents, count.index)
  override_namespace = "argocd"
}

resource "kubectl_manifest" "argocd" {
  depends_on = [
    kubectl_manifest.namespace,
  ]
  count              = length(data.kubectl_file_documents.argocd.documents)
  yaml_body          = element(data.kubectl_file_documents.argocd.documents, count.index)
  override_namespace = "argocd"
}

resource "kubectl_manifest" "my-nginx-app" {
  depends_on = [
    kubectl_manifest.argocd,
  ]
  count              = length(data.kubectl_file_documents.my-nginx-app.documents)
  yaml_body          = element(data.kubectl_file_documents.my-nginx-app.documents, count.index)
  override_namespace = "argocd"
}