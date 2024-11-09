terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1" # Change to your preferred region
}

resource "aws_instance" "example" {
  count         = 2                       # Number of instances to create
  ami           = "ami-0dee22c13ea7a9a67" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"              # Free tier eligible instance type

  tags = {
    Name = "example-instance"
  }
}