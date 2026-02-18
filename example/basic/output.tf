output "instance_ids" {
  value = module.test_ec2_instances.instance_ids
}

output "public_ips" {
  value = module.test_ec2_instances.ec2_public_ips
}