#resource "aws_lb_target_group" "test" {
#  name     = "devopsmar-lb-tg"
#  port     = 80
#  protocol = "HTTP"
#  vpc_id   = aws_vpc.vpc.id
#}
resource "aws_elb" "bar" {
  name               = "foobar-terraform-elb"
 #availability_zones = ["us-east-1a", "us-east-1b"]
 subnets = [aws_subnet.subnet1.id,aws_subnet.subnet2.id]
 instances = [aws_instance.web.id, aws_instance.web1.id]
 security_groups = [aws_security_group.allow_tls.id]


  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

}
