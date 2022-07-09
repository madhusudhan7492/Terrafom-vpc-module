#Creating VPC
resource "aws_vpc" "OpstreeVPC" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "OpstreeVPC"
  }
}

