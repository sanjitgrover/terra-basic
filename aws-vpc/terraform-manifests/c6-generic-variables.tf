# AWS Region
variable "aws_region"{
    description = "Region in which EC2 Instance would be created"
    default = "us-east-1"
    type = string
}

# Environment
variable "environment"{
    type = string
    default = "dev"
}

    
# Business Division
variable "business_division"{
    type = string
    default = "HR"
}



