module "loadbalancer_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"
  # insert the 2 required variables here
  name = "loadbalancer-sg"
  description = "Security Group with ingress HTTP port open and egress open internetwide"
  vpc_id = module.vpc.vpc_id
  
  #ingress and cidr
  ingress_rules = ["http-80-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  
  #egress
  egress_rules = ["all-all"]
  tags = local.common_tags
}