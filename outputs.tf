output "github_auth_id" {
  description = "description"
  value       = rancher2_auth_config_github.github.id
}


output "global_role_binding_id" {
  description = "description"
  value       = rancher2_global_role_binding.admin-group.id
}
