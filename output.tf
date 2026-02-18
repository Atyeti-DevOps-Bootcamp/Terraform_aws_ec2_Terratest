output "instance_ids" {
  description = "IDs of EC2 instances"
  value       = [module.ec2_public.id]
}

output "ec2_public_ips" {
  description = "Public IPs of EC2 instances"
  value       = [module.ec2_public.public_ip]
}

output "private_ips" {
  description = "Private IPs of EC2 instances"
  value       = [module.ec2_public.private_ip]
}