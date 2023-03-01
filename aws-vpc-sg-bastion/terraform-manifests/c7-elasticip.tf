resource "aws_eip" "bastion_ip" {
  instance = module.ec2_bastion.id[0]
  vpc      = true
  
  depends_on = [module.ec2_bastion, module.vpc]
  tags = local.common_tags
}