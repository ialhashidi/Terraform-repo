terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

#Provider's token
provider "github" {
    token   = var.my-token
}

# Creating a Github repository
resource "github_repository" "Myrepo" {
  name        = "Terraform-repo"
  description = "My Terraform Repo"

  visibility = "public"

}
