provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-0e306788ff2473ccb"  # Amazon Linux 2 AMI ID for x86_64 architecture
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-0db5d7051a336863c"]
  
  tags = {
    Name    = "Terraform-Instance"
    Project = "Terraform"
  }
}
