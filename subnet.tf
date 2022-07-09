#Creating Private Subnet
resource "aws_subnet" "OpstreePrivateSubnet" {
  vpc_id     = aws_vpc.OpstreeVPC.id
  cidr_block = var.private_subnet_cidr
  availability_zone = var.private_az

  tags = {
    Name = "OpstreePrivateSubnet"
  }
}
#Creating Public Subnet
resource "aws_subnet" "OpstreePublicSubnet" {
  vpc_id     = aws_vpc.OpstreeVPC.id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.public_az

  tags = {
    Name = "OpstreePublicSubnet"
  }
}