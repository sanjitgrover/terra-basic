resource "aws_instance" "ec2demo" {
  ami           = data.aws_ami.amzlinux2.id
  # instance_type = var.instance_type
  instance_type = var.instance_type_list[1]
  # instance_type = var.instance_type_map["qa"]
  user_data= file("${path.module}/user-install.sh")
  count= 2
  key_name=var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc_ssh.id, aws_security_group.vpc_web.id]
  tags={
      Name="ec2demo-${count.index}"
  }
}