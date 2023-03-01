module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.1"
  # insert the 2 required variables here
  name = "public-bastion-sg"
  description = "Security Group with ingress SSH port open and egress open internetwide"
  vpc_id = module.vpc.vpc_id
  
  #ingress and cidr
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  
  #egress
  egress_rules = ["all-all"]
  tags = local.common_tags
}