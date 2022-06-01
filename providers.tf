provider "rancher2" {
    # version = ""
    token_key = var.api_token
    api_url = var.api_url
}

terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
      version = ">=1.15.1"
    }
  }
}

provider "github" {
    token = var.github_token
    owner = var.organization
}
