resource "aws_security_group" "harsh-viradia-web-sg" {
  name = "harsh-viradia-web-sg"
  vpc_id = aws_vpc.harsh-viradia-web-vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.0.64.0/18"]
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [10.0.64.0/18]
  }

  tags = {
    "Name" = "harsh-viradia-web-sg"
  }
}
