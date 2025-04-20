resource "aws_instance" "kamara" {
    count = var.number_instances
    ami = var.ami_id
    instance_type = var.instance_type[1]
    availability_zone = var.availability_zone[1]
    enable_primary_ipv6 = var.enable_primary_ipv6
    security_groups = "default"
    tags = var.tags

  
}

resource "aws_instance" "sedekie" {
    count = "number of instance"
    ami = "ami-003675"
    instance_type = ["t2.nano", "t2.micro", "t2.medium", "t2.large"]
    availability_zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
    enable_primary_ipv6 = "false"
    security_groups = default
    tags = {
      "Name" = "musa"
    }

  
}

locals {
  count = local.count
  ami = local.ami
  instance_type = local.instance_type
  availability_zone = local.availability_zone
  enable_primary_ipv6 = local.enable_primary_ipv6
  tags = local.tags
}