variable "region" {default = "us-east-2"}
variable "env" {default = "dev-aws-eks-ap-south-1"}
  

provider "aws" {
  region = "${var.region}"
}

# terraform {
#   backend "s3" {
#     bucket       = "terraforrm-eks-state-files"
#     key          = "environment/dev/ap-south-1/iamrole/iamrole.tfstate"
#     region       = "ap-south-1"
#   }
# }
module "iamrole" {
  source = "D:\\AWS-TF\\tf-single-subnet\\infra-terraform\\modules\\iam_roles"
  env = var.env

}