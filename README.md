# GCP Kubernetes Cluster Deployment for ArgoCD using Terraform

This repository outlines the setup and deployment of a GCP Kubernetes cluster using Terraform, and ArgoCD for application deployment.

## Prerequisites

1. [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) installed.
2. A GCP account with necessary permissions.
3. A GCP service account role `credentials.json`.

## Setup and Deployment

### 1. Clone Project

```bash
git clone https://github.com/mikaeelkhalid/gcp-gke-argocd-terraform.git
```

### 2. Configuration

Before proceeding, ensure you've updated `variables.tf`:

### 2. Deployment with Terraform

To deploy the infrastructure:

```bash
terraform init
terraform apply
```

## Cleanup

To destroy the provisioned resources:

```bash
terraform destroy
```

## Notes

- Ensure you have the necessary permissions on GCP to provision resources.
- Monitor costs associated with the provisioned resources on GCP to avoid unexpected charges.
- Always review and validate Terraform scripts before applying them to ensure they are aligned with the desired configuration.

## Contributing

If you'd like to contribute to this project, please fork the repository, make your changes, and submit a pull request. We appreciate your contributions!

