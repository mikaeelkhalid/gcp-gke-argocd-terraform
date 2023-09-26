variable "project_id" {
  type        = string
  default     = "project-id-here"
  description = "gcp project id"
}

variable "credentials_path" {
  description = "Path to the Google Cloud service account JSON key"
  type        = string
  default     = "./credentials.json"
}

variable "cluster_name" {
  type        = string
  default     = "argo-cluster"
  description = "cluster name"
}

variable "region" {
  type        = string
  default     = "us-central1"
  description = "cluster region"
}

variable "location" {
  type        = string
  default     = "us-central1-a"
  description = "cluster location"
}