locals {
    owner = var.business_division
    environment = var.environment
    
    name = "${local.owner}-${local.environment}"
    common_tags = {
        owner = local.owner
        environment = local.environment
    }
}