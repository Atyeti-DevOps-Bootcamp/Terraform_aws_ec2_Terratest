module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"
  
  name                     = var.name
  ami                      = var.ami
  instance_type            = var.instance_type 
  subnet_id                = var.subnet_ids[0]   # must be a string
  key_name                 = var.key_name
  vpc_security_group_ids   = var.security_group_ids
  # associate_public_ip      = var.associate_public_ip
}
  
