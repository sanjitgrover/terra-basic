resource "aws_instance" "ec2demo" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
  user_data= file("${path.module}/user-install.sh")
  tags={
      Name="ec2demo"
  }
}