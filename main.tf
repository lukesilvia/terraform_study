provider "aws" {
  region = "ap-northeast-1"
}

locals {
  instance_type = "t2.micro"
}

resource "aws_instance" "example" {
  ami = "ami-0f9ae750e8274075b"
  instance_type = local.instance_type

  tags = {
    Name = "exampl"
  }
}

output "example_instance_id" {
  value = aws_instance.example.id
}
