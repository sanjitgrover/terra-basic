# AWS Region
variable "aws_region" {
  description = "Region in which EC2 Instance would be created"
  default     = "us-east-1"
  type        = string
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "myvpc"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  description = "Availability Zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "vpc_public_subnets" {
  description = "Public subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.151.0/24"]
}

variable "vpc_private_subnets" {
  description = "Private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_db_subnets" {
  description = "DB Subnets"
  type        = list(string)
  default     = ["10.0.201.0/24", "10.0.202.0/24"]
}

variable "vpc_create_database_subnet_group" {
  type    = bool
  default = true
}

variable "vpc_create_database_subnet_route_table" {
  type    = bool
  default = true
}


variable "vpc_enable_nat_gateway" {
  type    = bool
  default = true
}
variable "vpc_single_nat_gateway" {
  type    = bool
  default = true
}

variable "vpc_enable_dns_hostnames" {
  type    = bool
  default = true
}
variable "vpc_enable_dns_support" {
  type    = bool
  default = true
}
  