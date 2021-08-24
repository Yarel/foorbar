resource "aws_security_group" "sg_db" {
  name_prefix = "sg_db"
  description = ""
  vpc_id      = "vpc-9be24df0"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }
}
