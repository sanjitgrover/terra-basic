module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"

  name = var.vpc_name
  cidr = var.vpc_cidr_block

  azs                 = var.vpc_availability_zones
  private_subnets     = var.vpc_private_subnets
  public_subnets      = var.vpc_public_subnets
  database_subnets    = var.vpc_database_subnets
 
 create_database_subnet_group = var.vpc_create_database_subnet_group
 enable_nat_gateway = var.vpc_enable_nat_gateway
 single_nat_gateway = var.vpc_single_nat_gateway
 
 enable_dns_hostnames = true
 enable_dns_support = true
 
 public_subnet_tags {
     Type = "Public Subnets"
 }
 
  private_subnet_tags {
     Type = "Private Subnets"
 }
 
 database_subnet_tags {
     Type = "Database Subnets"
 }
 tags = local.common_tags
 vpc_tags = local.common_tags
}