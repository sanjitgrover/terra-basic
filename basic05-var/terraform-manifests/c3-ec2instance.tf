
resource "aws_instance" "ec2demo" {
  ami           = data.aws_ami.amzlinux2.id
  # instance_type = var.instance_type
  instance_type = var.instance_type
  # instance_type = var.instance_type_map["qa"]
  user_data= file("${path.module}/user-install.sh")
  # for_each = toset(data.aws_availability_zones.avail_zones)
  
  for_each = toset(keys({for az, details in data.aws_ec2_instance_type_offerings.ec2_inst_type: 
  az=>details.instance_types if length(details.instance_types) != 0}))
  availability_zone = each.key
  key_name=var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc_ssh.id, aws_security_group.vpc_web.id]
  tags={
      Name="ec2demo-${each.value}"
  }
}