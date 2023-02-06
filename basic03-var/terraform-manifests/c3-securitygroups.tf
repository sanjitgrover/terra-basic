resource "aws_security_group" "vpc_ssh" {
  name        = "vpc_ssh"
  description = "Dev VPC SSH"
#   vpc_id      = aws_vpc.main.id    Not required for DEfault

  ingress {
    description      = "Allow PORT 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "vpc-ssh"
  }
}

resource "aws_security_group" "vpc_web" {
  name        = "vpc_web"
  description = "Dev VPC WEB"
#   vpc_id      = aws_vpc.main.id    Not required for DEfault

  ingress {
    description      = "Allow PORT 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
  
  ingress {
    description      = "Allow PORT 443"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "vpc-web"
  }
}
