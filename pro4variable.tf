variable "ami_id" {
    description = "AMI ID for my instance"
    type = string
    default = "ami-000345672"
  
}

variable "instance_type" {
    description = "Instance type for my ec2"
    type = list(string)
    default = [ "t2.nano", "t2.micro", "t2.medium", "t2.large" ]
  
}

variable "availability_zone" {
    description = "My instance availability zone"
    type = list(string)
    default = [ "us-east-1a", "us-east-1b", "us-east-1c" ]
  
}

variable "number_instances" {
    description = "Numbers of instance to lunch"
    type = number
    default = 1
  
}

variable "enable_primary_ipv6" {
    description = "Enable primary ipv6 for my instance"
    type = bool
    default = false
  
}

variable "tags" {
    description = "Tags to attach to my instances"
    type = map(string)
    default = {
      "Name" = "kamara"
      "env" = "dev"
      "Owner" = "musa"
      "project" = "learning"
    }
  
}
