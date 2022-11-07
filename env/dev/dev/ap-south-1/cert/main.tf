variable "namespace_name" { default = "cert-manager"}
variable "cluster_issuer_name" { default = "manager"}
variable "create_namespace" { default = "true"}
variable "additional_set" {default     = []}
variable "cluster_name" {default = "dev-aws-eks-ap-south-1"}
variable "secretName" {default = "test"}


module "cert" {
  source = "D:\\AWS-TF\\tf-single-subnet\\infra-terraform\\modules\\cert"
  namespace_name = var.namespace_name
  cluster_issuer_name = var.cluster_issuer_name
  create_namespace =var.create_namespace
  additional_set =var.additional_set
  cluster_name =var.cluster_name
  secretName = var.secretName

}