output "vpc_id" {
  value = aws_vpc.this.id
}

output "instance_public_ip" {
  value = aws_instance.web.public_ip
}
