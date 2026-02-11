data "aws_ami" "ubuntu_22" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_launch_template" "lt" {
  name_prefix   = "web-lt-"
  image_id      = data.aws_ami.ubuntu_22.id
  instance_type = var.instance_type

  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [var.instance_security_group_id]
  }
}
