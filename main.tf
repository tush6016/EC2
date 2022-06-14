provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "Demo" {
  ami           = "ami-0756a1c858554433e"
  instance_type = "t2.micro"
  key_name = "Gen"
  tags = {
    Name = "demo1"
  }
}
resource "aws_vpc" "try" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "try"
  }
}
resource "aws_subnet" "sub-1" {
  vpc_id     = aws_vpc.try.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "sub-1"
  }
}


