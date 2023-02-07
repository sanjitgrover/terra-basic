output "instance_publicip"{
    description = "EC2 Instance Public IP"
    value = [for ec2 in aws_instance.ec2demo: ec2.public_ip]
}

output "instance_id"{
    description = "EC2 Instance Public DNS with For"
    value = {for cnt, ec2 in aws_instance.ec2demo: cnt => ec2.id}
}

output "instance_publicdns"{
    description = "EC2 Instance Public DNS with Splat"
    value = aws_instance.ec2demo[*].public_dns
}