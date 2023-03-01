output "ec2_bastion_id" {
  description = "The ID of the instance"
  value       = module.ec2_bastion.id
}

output "ec2_bastion_ip" {
  description = "The public IP assigned to the instance."
  value       = module.ec2_bastion.public_ip
}

output "ec2_private_id" {
  description = "The ID of the instance"
  value       = [for ec2 in module.ec2_private: ec2.id]
}

output "ec2_private_ip" {
  description = "The private IP assigned to the instance."
  value       = [for ec2 in module.ec2_private: ec2.private_ip ]
}