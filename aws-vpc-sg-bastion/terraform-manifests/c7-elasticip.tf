resource "aws_eip" "bastion_ip" {
  instance = module.ec2_bastion.id
  vpc      = true
  
  depends_on = [module.ec2_bastion, module.vpc]
  tags = local.common_tags
  
  provisioner "local-exec" {
        command = "echo VPC destroyed on `date`  >> destroy-time-vpc-id.txt"
        working_dir = "local-exec-output-files/"
        # on_failure = continue
        when = destroy
    }
}