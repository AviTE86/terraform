output "vpc_id" {
  value       = module.vpc_and_instance.vpc_id
  description = "VPC ID"
}

output "instance_public_ip" {
  value       = module.vpc_and_instance.instance_public_ip
  description = "Public IP of the standalone web instance"
}

output "alb_dns_name" {
  value       = module.alb.alb_dns_name
  description = "DNS name of the Application Load Balancer"
}

output "alb_zone_id" {
  value       = module.alb.alb_zone_id
  description = "Zone ID of the ALB (for Route53 alias records)"
}
