module "private_sg"  {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.1"
  name = "public-sg"
  description = "SG with ingress SSH HTTP open for VPC block, egress open to all"
  
  vpc_id = module.vpc.vpc_id
  
  ingress_rules=["ssh-22-tcp","http-80-tcp-"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  
  egress_rules=["all-all"]
  tags = local.common_tags
}