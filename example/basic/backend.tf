 terraform {
   backend "remote" {
     organization = "atyeti-inc"

     workspaces {
       name = "Terraform_Test"
     }
   }
 }
