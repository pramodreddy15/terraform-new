terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.0.0"
}
#
# data "aws_ami" "my_image"{
#   most_recent = true
#   owners = ["amazon"]
#   filter {
#     name = "name"
#     values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
#   }
# }
#
# resource "aws_instance" "my_ec2" {
#   ami           = data.aws_ami.my_image.id
#   instance_type = "t2.micro"
#   tags = {
#     Name = "MyEC2Instance"
#   }
# }