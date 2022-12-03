# get latest ebs amazon linux ami
data aws_ami "amazonlinux2" {
  most_recent = true
  owners      = ["137112412989"] # Amazon
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# get latest ebs almalinux ami

# data aws_ami "almalinux8" {
#   most_recent = true
#   owners      = ["147114422309"] # AlmaLinux
#   filter {
#     name   = "name"
#     values = ["almalinux-8-hvm-*-x86_64-gp2"]
#   }
# }

data "aws_caller_identity" "current" {}
data "aws_region" "current_region" {}
data "aws_availability_zones" "azs" {}