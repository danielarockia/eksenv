remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "ekstg-terraform-state"

    key = "${path_relative_to_include()}/terraform1.tfstate"
    region         = "us-east-2"
    encrypt        = true
    #dynamodb_table = "my-lock-table"
  }
}