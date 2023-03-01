variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "instance_keypair" {
    type = string
    default = "terraform-key"
}

variable "private_instance_count" {
    type = number
    default = 1
}