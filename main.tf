provider "aws" {
  region = "ap-northeast-1"
}

locals {
  instance_type = "t2.micro"
}

data "template_file" "httpd_user_data" {
  template = file("./user_data.sh.tpl")

  vars = {
    package = "httpd"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0f9ae750e8274075b"
  instance_type = local.instance_type
  user_data = data.template_file.httpd_user_data.rendered

  tags = {
    Name = "example"
  }
}
