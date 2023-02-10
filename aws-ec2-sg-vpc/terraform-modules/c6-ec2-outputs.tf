output "ec2_bastion_public_ids"{
    value = module.ec2_public.id
}

output "ec2_bastion_public_ip"{
    value = module.ec2_public.public_ip
}

output "ec2_private_ids"{
    value = [ for ec2p in module.ec2_private: ec2p.id ]
}

output "ec2_private_ip"{
    value =  [ for ec2p in module.ec2_private: ec2p.private_ip]
}