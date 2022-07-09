#Creating Internet gateway
resource "aws_internet_gateway" "OpstreeIGW" {
  vpc_id = aws_vpc.OpstreeVPC.id

  tags = {
    Name = "OpstreeIGW" 
  }
}