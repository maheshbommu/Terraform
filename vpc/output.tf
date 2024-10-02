output "aws_instance" {
  value = "http://${aws_instance.one.public_ip}/browny"
}