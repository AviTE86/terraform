resource "aws_launch_template" "lt" {
  name_prefix   = "web-lt-"
  image_id      = data.aws_ami.ubuntu_22.id
  instance_type = "t2.micro"

  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [aws_security_group.web_sg.id]
  }
}
