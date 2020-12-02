terraform {
	required_providers {
		tfe = "~> 0.15.0"
	}
}

resource "tfe_workspace" "workspace" {
	name = var.workspace_name
	organization = var.organization
}

resource "tfe_team" "team" {
	name         = var.team_name
	organization = var.organization
}


resource "tfe_team_access" "team_access" {
	access       = var.team_access_level
	team_id      = tfe_team.team.id
	workspace_id = tfe_workspace.workspace.id
}

resource "tfe_team_token" "team_token" {
	team_id = tfe_team.team.id
}


