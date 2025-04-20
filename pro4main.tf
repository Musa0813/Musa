resource "aws_instance" "kamara" {
    count = "2"
    ami = "ami-3457-54321"
    instance_type = ["t2.nano", "t2.micro", "t2.medium", "t2.large"]
    availability_zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
    enable_primary_ipv6 = false
    security_groups = "default"
    tags = {
        "Name" = "kamara"
    }

  
}