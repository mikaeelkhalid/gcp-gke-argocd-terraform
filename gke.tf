resource "google_container_cluster" "main" {
  name               = var.cluster_name
  location           = var.location
  initial_node_count = 2

  node_config {
    service_account = google_service_account.main.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
}