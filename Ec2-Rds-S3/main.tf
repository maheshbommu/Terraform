resource "random_id" "bucket_id" {
  byte_length = 8
}

resource "aws_s3_bucket" "one" {
  bucket = "terraform-s3-bucket-${random_id.bucket_id.hex}"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-053b12d3152c0cc71" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "MyTerraformInstance"
  }
}
resource "aws_db_instance" "my_rds" {
  instance_class = "db.t3.micro"
  engine         = "mysql"
  engine_version = "8.0.39"
  allocated_storage = 20
  username          = "admin"
  password          = "mahesh@123"


  tags = {
    Name = "terraform rds"
  }
}
