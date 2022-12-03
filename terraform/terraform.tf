terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.44.0"
    }
  }

  cloud {
    organization = "nullopsco"

    workspaces {
      name = "puppet-on-aws"
    }
  }
}

resource random_string random {
  length  = 6
  upper   = false
  lower   = true
  numeric  = true
  special = false
}

