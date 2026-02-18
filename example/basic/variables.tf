variable "name" {
  type        = string
  description = "Name prefix for EC2 instances"
}

variable "ami" {
  type        = string
  description = "AMI ID for EC2 instances"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "key_name" {
  type        = string
  description = "Key pair name for EC2"
  default     = "my-default-key"
}

# variable "subnet_ids" {
#   type        = list(string)
#   description = "List of subnet IDs to launch EC2 in"
# }

# variable "security_group_ids" {
#   type        = list(string)
#   description = "List of security group IDs to attach"
# }

variable "environment" {
  type    = string
  default = "dev"
}

variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources"
  default     = "us-east-2"
}
variable "default_tags" {
  description = "Global default tags"
  type        = map(string)
}