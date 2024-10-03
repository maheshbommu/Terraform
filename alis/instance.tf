

resource "aws_instance" "example_east" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  provider      = aws.east
}