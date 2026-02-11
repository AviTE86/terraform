resource "aws_autoscaling_group" "asg" {
  min_size         = 1
  max_size         = 3
  desired_capacity = 1
  vpc_zone_identifier = aws_subnet.public[*].id
  target_group_arns  = [aws_lb_target_group.tg.arn]

  launch_template {
    id      = aws_launch_template.lt.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "alb-asg-instance"
    propagate_at_launch = true
  }
}
