resource "aws_instance" "one" {
  ami                    = "ami-08718895af4dfa033"
  instance_type          = "t2.micro"
  key_name               = "my_idras"
  vpc_security_group_ids = [data.aws_security_group.apply.id]
  user_data              = file("browny.sh")


}
data "aws_vpc" "one" {
  default = true

}
data "aws_security_group" "apply" {
  vpc_id = data.aws_vpc.one.id
  name   = "launch-wizard-1"
}