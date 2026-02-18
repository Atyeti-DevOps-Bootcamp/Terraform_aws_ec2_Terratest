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

# Accept multiple subnets, but you can select the first one in module call
variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs to launch EC2 in"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs to attach"
}

variable "associate_public_ip" {
  type        = bool
  default     = true
  description = "Whether to assign public IP"
}

variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources"
}