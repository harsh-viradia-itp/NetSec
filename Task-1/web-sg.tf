############################################################################################################################################
############################################################################################################################################
####                                                                                                                                    ####
####                            Create Web Security group for internal traffic and allow only specific traffic                          ####
####                                                                                                                                    ####
############################################################################################################################################
############################################################################################################################################


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
    cidr_blocks = ["10.0.64.0/18"]
  }

  tags = {
    "Name" = "harsh-viradia-web-sg"
  }
}

############################################################################################################################################
############################################################################################################################################
####                                                                                                                                    ####
####                            For Cross refrence security group                                                                       ####
####                                                                                                                                    ####
############################################################################################################################################
############################################################################################################################################

# module "wsg" {
#   source = "terraform-aws-modules/security-group/aws"
#   name = "Web-sg"
#   vpc_id = aws_vpc.harsh-viradia-web-vpc.id

#   computed_ingress_with_source_security_group_id = [ {
#     rule = "http-tcp"
#     source_security_group_id = module.ssg.security_group_id
#   } ]

#   # number_of_computed_ingress_with_source_security_group_id = 1
# }