output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID"
}

output "public_subnet_ids" {
  value       = aws_subnet.public[*].id
  description = "List of public subnet IDs"
}

output "private_subnet_ids" {
  value       = [aws_subnet.private.id]
  description = "List of private subnet IDs"
}

output "web_sg_id" {
  value       = aws_security_group.web_sg.id
  description = "Security group ID for web instances"
}

output "alb_sg_id" {
  value       = aws_security_group.alb_sg.id
  description = "Security group ID for ALB"
}

output "instance_public_ip" {
  value       = aws_instance.web.public_ip
  description = "Public IP of the web instance"
}

