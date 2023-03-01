module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.1"
  # insert the 2 required variables here
  name = "private-sg"
  description = "Security Group with ingress SSH, HTTP port open and egress open internetwide"
  vpc_id = module.vpc.vpc_id
  
  #ingress and cidr
  ingress_rules = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  
  #egress
  egress_rules = ["all-all"]
  tags = local.common_tags
}