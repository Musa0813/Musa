resource "aws_instance" "web_app" {
  ami                 = var.ami
  instance_type       = var.instance_type[1]
  availability_zone   = var.availability_zone[1]
  enable_primary_ipv6 = var.enable_primary_ipv6

  tags = var.tags

}
