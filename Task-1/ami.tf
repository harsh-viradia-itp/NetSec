############################################################################################################################################
############################################################################################################################################
#### Get AMI of Amazon Linux                                                                                                            ####  
############################################################################################################################################
############################################################################################################################################

data "aws_ami" "web_ami" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }
}
