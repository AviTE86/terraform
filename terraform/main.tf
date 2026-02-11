terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Module 1+2: VPC, subnets, security groups, and standalone web instance
module "vpc_and_instance" {
  source = "./1+2"

  vpc_cidr         = var.vpc_cidr
  subnet_count     = var.subnet_count
  instance_type    = var.instance_type
  assign_public_ip = var.assign_public_ip
}

# Module 3+4+5: ALB, target group, ASG, and launch template
module "alb" {
  source = "./3+4+5"

  vpc_id                     = module.vpc_and_instance.vpc_id
  public_subnet_ids          = module.vpc_and_instance.public_subnet_ids
  instance_security_group_id = module.vpc_and_instance.web_sg_id
  alb_security_group_id      = module.vpc_and_instance.alb_sg_id
  instance_type              = var.asg_instance_type
}
