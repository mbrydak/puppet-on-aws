provider "aws" {
  region = "eu-west-1"
  default_tags {
    tags = {
      application      = "onboarding"
      owner            = "max@inuits.eu"
      creator          = "max@inuits.eu"
      managed_by       = "terraform"
    }
  }
}