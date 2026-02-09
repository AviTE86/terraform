provider "aws" {
  region = "us-east-1"
}

module "infra" {
  source = "./modules/network_ec2"

  vpc_cidr         = "10.0.0.0/16"
  subnet_count     = 2
  instance_type    = "t2.micro"
  assign_public_ip = true
}

output "ec2_public_ip" {
  value = module.infra.instance_public_ip
}
