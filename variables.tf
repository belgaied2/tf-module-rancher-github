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




