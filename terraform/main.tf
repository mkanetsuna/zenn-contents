provider "github" {
  owner = var.github_owner
}

data "github_repository" "target" {
  full_name = "${var.github_owner}/${var.repository_name}"
}

resource "github_branch_protection" "main" {
  repository_id = data.github_repository.target.node_id
  pattern        = "main"

  enforce_admins        = true
  allows_force_pushes   = false
  allows_deletions      = false
  lock_branch           = false
  require_signed_commits = true
  require_conversation_resolution = true

  required_pull_request_reviews {
    dismiss_stale_reviews      = true
    require_code_owner_reviews = false
    required_approving_review_count = var.required_approving_review_count
  }
}
