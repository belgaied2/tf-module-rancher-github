
resource "rancher2_auth_config_github" "github" {
  client_id = var.github_access_key
  client_secret = var.github_secret_key
  access_mode = "restricted"
  allowed_principal_ids = [ var.admin_group_principal_id.is_team ? "github_team://${data.github_team.fe.id}" : "github_org://${data.github_team.fe.id}"]
}

data "github_team" "fe" {
    slug = var.admin_group_principal_id.name
}

# data "rancher2_user" "belgaied" {
#   is_external = true
#   name = "Mohamed Belgaied Hassine" 
#   depends_on = ["rancher2_auth_config_github.github"]
# }



resource "rancher2_global_role_binding" "admin-group" {
  name = "admin-role-bind"
  global_role_id = "admin"
  group_principal_id =  var.admin_group_principal_id.is_team ? "github_team://${data.github_team.fe.id}" : "github_org://${data.github_team.fe.id}"
}
