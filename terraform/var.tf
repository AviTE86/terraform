variable "aws_region" {
  type        = string
  description = "AWS region for all resources"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC (module 1+2)"
  default     = "10.0.0.0/16"
}

variable "subnet_count" {
  type        = number
  description = "Number of public subnets to create (module 1+2)"
  default     = 2
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type for the standalone web instance (module 1+2)"
  default     = "t3.micro"
}

variable "assign_public_ip" {
  type        = bool
  description = "Whether to assign a public IP to the standalone EC2 instance (module 1+2)"
  default     = true
}

variable "asg_instance_type" {
  type        = string
  description = "EC2 instance type for ASG instances behind the ALB (module 3+4+5)"
  default     = "t3.micro"
}

