# ALB

resource "aws_alb" "main" {
  name            = "tf-ecs-chat"
  subnets         = ["${aws_subnet.public_subnet_1.*.id}","${aws_subnet.public_subnet_2.*.id}"]
  security_groups = ["${aws_security_group.lb.id}"]
}

resource "aws_alb_target_group" "app" {
  name        = "tf-ecs-chat"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = "${aws_vpc.main.id}"
  target_type = "ip"
  health_check {    
    healthy_threshold   = 3    
    unhealthy_threshold = 10    
    timeout             = 5    
    interval            = 10    
   # path                = "/__health__"    
    path                = "${var.path2}"    
  #  port                = "80"  
    port                = "${var.healthcheckport}"  
  }
}

# Redirect all traffic from the ALB to the target group
resource "aws_alb_listener" "front_end" {
  load_balancer_arn = "${aws_alb.main.id}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_alb_target_group.app.id}"
    type             = "forward"
  }
}

# Fixed-response action

resource "aws_alb_listener_rule" "health_check" {
  listener_arn = "${aws_alb_listener.front_end.arn}"

  action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "HEALTHY"
      status_code  = "200"
    }
  }

  condition {
    field  = "path-pattern"
    #values = ["/service"]
    values = ["${var.path1}"]
  }
}
