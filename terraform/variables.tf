variable "github_owner" {
  description = "GitHub organization or user that owns the repository."
  type        = string
}
variable "repository_name" {
  description = "Repository name to apply branch protection to."
  type        = string
  default     = "main"
}

variable "branch_pattern" {
  description = "Branch name pattern to apply protections to."
  type        = string
}
variable "branch_pattern" {
  description = "Branch name pattern to apply protections to."
  type        = string
  default     = "main"
}
