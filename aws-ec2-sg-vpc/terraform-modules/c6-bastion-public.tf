module "ec2_public" {
  depends_on = [ module.vpc ]    
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"
  
  name = "${var.environment}-BastionHost"
  
      
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
#   monitoring             = true
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]
  subnet_ids              = [module.vpc.private_subnets[0], module.vpc.private_subnets[1]]
  user_data = file("${path.module}/app1-install.sh")
  instance_count = var.private_instance_count    
  tags = local.common_tags
}