
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

variable "private_instance_count"{
    description = "private_instance_count"
    type = number
    default = 1
}

