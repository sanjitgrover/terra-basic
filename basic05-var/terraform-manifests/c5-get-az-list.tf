data "aws_availability_zones" "avail_zones" {
  // all_availability_zones = true

  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}



data "aws_ec2_instance_type_offerings" "ec2_inst_type" {
 
  for_each = toset(data.aws_availability_zones.avail_zones.names)
  filter {
    name = "instance-type"
    values = ["t3.micro"]
  }
  
  filter {
    name = "location"
    values = [each.key]
  }
  location_type = "availability-zone"
}

output "output_v2"{
  value = {for az, details in data.aws_ec2_instance_type_offerings.ec2_inst_type: 
  az=>details.instance_types}
}

output "output_v3"{
  value = keys({for az, details in data.aws_ec2_instance_type_offerings.ec2_inst_type: 
  az=>details.instance_types if length(details.instance_types) != 0})
}

