variable "github_owner" {
  description = "GitHub organization or user that owns the repository."
  type        = string
}

variable "repository_name" {
  description = "Repository name to apply branch protection to."
  type        = string
}

variable "required_approving_review_count" {
  description = "Number of approving reviews required before merging."
  type        = number
  default     = 0
}
