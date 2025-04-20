resource "aws_instance" "kamara" {
    count = var.number_instances
    ami = var.ami_id
    instance_type = var.instance_type[1]
    availability_zone = var.availability_zone[1]
    enable_primary_ipv6 = var.enable_primary_ipv6
    security_groups = "default"
    tags = var.tags

  
}