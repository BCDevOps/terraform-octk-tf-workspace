//output "workpaces" {
//	value = data.tfe_workspace_ids.workspace_ids.external_ids
//}

output "provisioning_workspace" {
	value = tfe_workspace.workspace
}

output "provisioning_token" {
	value = tfe_team_token.team_token.token
}

