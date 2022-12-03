module "puppet_slave" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.1.0"

  count = 2

  name                   = "puppet-slave${count.index}-${random_string.random.result}"
  instance_type          = "t3.micro"
  ami                    = data.aws_ami.amazonlinux2.id
  subnet_id              = module.puppet_vpc.public_subnets[0]
  # vpc_security_group_ids = [module.bastion_sg.security_group_id]
  iam_instance_profile   = module.ssm_role.iam_instance_profile_id

}
