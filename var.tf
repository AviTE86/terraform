variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "subnet_count" {
  type        = number
  description = "Number of public subnets to create"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "assign_public_ip" {
  type        = bool
  description = "Whether to assign a public IP to the EC2 instance"
}
