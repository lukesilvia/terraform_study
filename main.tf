provider "aws" {
  region = "ap-northeast-1"
}

locals {
  instance_type = "t2.micro"
}

module "dev_server" {
  source = "./http_server"
  instance_type = local.instance_type
}

output "public_dns" {
  value = module.dev_server.public_dns
}
