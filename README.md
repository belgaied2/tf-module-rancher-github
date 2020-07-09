# Terraform Module to activate GitHub Authentication Backend on Rancher Server
This repository aims at providing a simple Terraform module to add users/teams from GitHub into Rancher.
At the moment, only Global Admin Role can be given, but this module will continue to evolve to provide more capabilities.

## Inputs
```
variable "admin_group_principal_id" {
    type = object( {
        is_team = bool
        name = string 
        }
    )
  description = "The Github team name to use as group principle id for global administrators"
}

variable "user_group_principal_id" {
  description = "The Github team or organisation to use as group principal id for normal users"
  default = ""
}

variable "api_url" {
  description = "URL to access Rancher Server"
  default     = "https://mbh.ps.rancher.space/v3"
}

variable "api_token" {
  description = "Token for Rancher API"
}

variable "github_access_key" {
  description = "Access Key for the Github Account to connect Rancher to"
}

variable "github_secret_key" {
  description = "Secret Key for the Github Account to connect Rancher to"
}

variable "organization" {
  description = "Github Organization"
  default     = "rancher"
}

variable "github_token" {
  description = "description"
}
```

## Outputs
```
output "github_auth_id" {
  description = "description"
  value       = rancher2_auth_config_github.github.id
}


output "global_role_binding_id" {
  description = "description"
  value       = rancher2_global_role_binding.admin-group.id
}

```