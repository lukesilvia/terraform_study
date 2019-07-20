resource "aws_instance" "example" {
  ami = "ami-0f9ae750e8274075b"
  instance_type = "t2.micro"

  tags = {
    Name = "example"
  }
}
