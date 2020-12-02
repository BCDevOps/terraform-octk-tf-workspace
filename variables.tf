variable "team_access_level" {
	type = string
	default = "plan"
	description = "The value indicating the level of access (permission set) that the TF Cloud team being created should have in the workspace being created."
}

variable "team_name" {
	type = string
	description = "The name of the team to create.  The team will have access to the workspace specified in `workspace_name` with the access level specified in `team_access_level`."
}

variable "workspace_name" {
	type = string
	description = "The name of the workspace to create."
}

variable "organization" {
	type = string
	description = "The name of the Terraform Cloud / Enterprise organization in which the workspace and other resources should be created."
}

