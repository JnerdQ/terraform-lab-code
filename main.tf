resource "github_repository" "terraform-lab" {
  name        = "terraform-lab"
  description = "My terraform-lab description"
  visibility = "public"

  pages {
    source {
      branch = "main"
      path   = "/docs"
    }
  }
}

resource "github_branch" "development" {
  repository = github_repository.terraform-lab.name
  branch     = "development"
}

resource "github_branch" "frontend" {
  repository = github_repository.terraform-lab.name
  branch     = "frontend"
}

resource "github_branch" "backend" {
  repository = github_repository.terraform-lab.name
  branch     = "backend"
}