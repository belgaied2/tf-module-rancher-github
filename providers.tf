provider "rancher2" {
    # version = ""
    token_key = var.api_token
    api_url = var.api_url
}

provider "github" {
    token = var.github_token
    organization = var.organization
}