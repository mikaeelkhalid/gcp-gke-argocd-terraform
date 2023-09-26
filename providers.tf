terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }

  backend "gcs" {
    bucket = "gcs-bucket-name-here"
    prefix = "argocd-tf"
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.location
  credentials = file("./credentials.json")
}

provider "kubectl" {
  host                   = module.gke_auth.host
  cluster_ca_certificate  = module.gke_auth.cluster_ca_certificate
  token                  = module.gke_auth.token
  load_config_file         = false
}