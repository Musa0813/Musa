variable "ami" {
  description = "Ami id for ec2 instance"
  type        = string
  default     = "ami-058a8a5ab36292159"

}

variable "instance_type" {
  description = "Instance type for my ec2"
  type        = list(string)
  default     = ["t2.nano", "t2.micro", "t2.medium", "t2.large"]

}

variable "availability_zone" {
  description = "Availability zone for my instance"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]

}

variable "enable_primary_ipv6" {
    description = "Enable primary IPv6 for my instance"
    type = bool
    default = false
}

variable "tags" {
  description = "Tags for instances"
  type        = map(string)
  default = {
    Name = "Web_app"
  }

}