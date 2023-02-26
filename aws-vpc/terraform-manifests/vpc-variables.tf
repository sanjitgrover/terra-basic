variable "vpc_name { 
    default = "myvpc"
    type = string
    }
variable "vpc_cidr_block" {
    default= "10.0.0.0/16"
    type = string
}
variable "vpc_availability_zones" {
    default= ["us-east-1a","us-east-1b"]
    type = list
}
variable "vpc_private_subnets"     {
    default= ["10.0.1.0/24", "10.0.2.0/24"]
    type = list
}
variable "vpc_public_subnets"      {
    default= ["10.0.101.0/24", "10.0.102.0/24"]
    type = list
}
variable "vpc_database_subnets"    {
    default= ["10.0.151.0/24", "10.0.152.0/24"]
    type = list
}
variable "vpc_create_database_subnet_group" {
    default= true
    type = bool
}
variable "vpc_enable_nat_gateway" {
    default= true
    type = bool
}
variable "vpc_single_nat_gateway" {
    default= true
    type = bool
}