resource "aws_lb" "alb-web" {
  name               = var.alb-web-name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb-security-group-web.id]
  subnets            = [aws_subnet.web-subnet1.id, aws_subnet.web-subnet2.id]
}

resource "aws_lb_target_group" "target-group-web" {
  name     = var.tg-web-name
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc.id
  health_check {
    path    = "/"
    matcher = 200
  }
}

resource "aws_lb_listener" "alb_listener-web" {
  load_balancer_arn = aws_lb.alb-web.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-group-web.arn
  }
}
resource "aws_lb" "alb-app" {
  name               = var.alb-app-name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb-security-group-app.id]
  subnets            = [aws_subnet.app-subnet1.id, aws_subnet.app-subnet2.id]
}

resource "aws_lb_target_group" "target-group-app" {
  name     = var.tg-app-name
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc.id
  health_check {
    path    = "/"
    matcher = 200

  }
}

resource "aws_lb_listener" "alb_listener-app" {
  load_balancer_arn = aws_lb.alb-app.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-group-app.arn
  }
}