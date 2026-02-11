variable "vpc_id" {
  type        = string
  description = "VPC ID where ALB and ASG will be created"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs for ALB and ASG"
}

variable "instance_security_group_id" {
  type        = string
  description = "Security group ID for instances behind the ALB"
}

variable "alb_security_group_id" {
  type        = string
  description = "Security group ID for the ALB"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type for ASG launch template"
  default     = "t2.micro"
}
