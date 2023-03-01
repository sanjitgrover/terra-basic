module "ec2_private" {
  depends_on = [module.vpc]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"
  name = "${var.environment}-vm"
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  instance_count = var.private_instance_count
  key_name = var.instance_keypair
  subnet_ids = [module.vpc.private_subnets[0], module.vpc.private_subnets[1]]
  vpc_security_group_ids = [module.private_sg.this_security_group_id]
  tags = local.common_tags
  user_data = file("{path.module/c7-app-install.sh}")
}