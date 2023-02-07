output "instance_publicip"{
    description = "EC2 Instance Public IP"
    value = toset([for ec2 in aws_instance.ec2demo: ec2.public_ip])
}

output "instance_dns"{
    description = "EC2 Instance Public DNS "
    value = toset([for ec2 in aws_instance.ec2demo: ec2.public_dns])
}

output "instance_dns_2"{
    description = "EC2 instance DNS map"
    value = tomap({for az, ec2 in aws_instance.ec2demo: az=>ec2.public_dns })
}

