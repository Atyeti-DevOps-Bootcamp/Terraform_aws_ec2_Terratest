# terraform {
#   backend "remote" {
#     organization = "atyeti-inc"

#     workspaces {
#       name = "Terraform-aws-ec2"
#     }
#   }
# }
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }

}
###
