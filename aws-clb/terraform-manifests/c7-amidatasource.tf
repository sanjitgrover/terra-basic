# Get latest AMI from AWS
data "aws_ami" "amzlinux2" {
#   executable_users = ["self"]
  most_recent      = true
#   name_regex       = "^myami-\\d{3}"
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
  filter {
      name = "architecture"
      values = ["x86_64"]
  }
}