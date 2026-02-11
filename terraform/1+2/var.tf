variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_count" {
  type        = number
  description = "Number of public subnets to create"
  default     = 2
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  # Use free-tier eligible instance type by default
  default     = "t2.micro"
}

variable "assign_public_ip" {
  type        = bool
  description = "Whether to assign a public IP to the EC2 instance"
  default     = true
}
