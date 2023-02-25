//Create VPC
//Create Public Subnet
//Create Private Subnet
//Create Internet Gateway and assign to VPC
//Create NAT Gateway in Public Subnet
//Creare Public Route Table, Add Public Route to IGW and add Public Subnet Entry
//Create Private Route Table, add Private Route to NAT add Private Subnet Entry 
locals{
  region = "us-east-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"
  
  name = "my-vpc"
  cidr = "10.0.0.0/16"
  
  azs                 = ["${local.region}a", "${local.region}b"]
  private_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets      = ["10.0.101.0/24", "10.0.102.0/24"]
  
  database_subnets    = ["10.0.151.0/24", "10.0.152.0/24"]
  
  
  create_database_subnet_group = false
  enable_nat_gateway = true
}


