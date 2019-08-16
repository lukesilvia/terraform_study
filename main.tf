resource "aws_instance" "default" {
  ami           = "ami-0f9ae750e8274075b"
  instance_type = local.instance_type

  tags = {
    Name = "tf_test"
  }
}
