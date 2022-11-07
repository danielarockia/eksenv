module "k8" {
  source = "D:\\AWS-TF\\tf-single-subnet\\infra-terraform\\modules\\k8"
  ns = [ {"namespace_name" : "core" },{ "namespace_name" : "io" },
         { "namespace_name" : "ia" },{ "namespace_name" : "ui" },
         { "namespace_name" : "lb" },{ "namespace_name" : "argocd" },
         { "namespace_name" : "istio-system" },{ "namespace_name" : "istio-ingress" }]
}