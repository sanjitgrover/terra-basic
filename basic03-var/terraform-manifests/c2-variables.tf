# AWS Region
variable "aws_region"{
    description = "Region in which EC2 Instance would be created"
    default = "us-east-1"
    type = string
}

# EC2 Instance Type
variable "instance_type"{
    description = "EC2 Instance type"
    type=string
    default="t3.micro"
    sensitive=false
    }
    # 
    
# Key value Pair
variable "instance_keypair" {
    description = "EC2 Key Pair"
    type=string
    default="terraform-key"
}