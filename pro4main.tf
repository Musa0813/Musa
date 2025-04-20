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
    count = local.number_instances[1]
    ami = local.ami
    instance_type = local.instance_type[2]
    availability_zone = local.availability_zone[2]
    enable_primary_ipv6 = local.enable_primary_ipv6
    security_groups = default
    tags = local.tags

  
}

locals {
  count = "number_instances"
  ami = "ami-00345634"
  instance_type = ["t2.nano", "t2.micro", "t2.medium", "t2.large"]
  availability_zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
  enable_primary_ipv6 = "enable_primary_ipv6"
  security_groups = "default"
  tags = {
    "Name" = "sedekie"
    "env" = "dev"
    "owner" = "musa"
    "project" = "learning"
  }
}