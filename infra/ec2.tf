module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "ec2-staging"

  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  monitoring             = true
  vpc_security_group_ids = aws_security_group.sg.id
  subnet_id              = module.vpc.public_subnets.id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
