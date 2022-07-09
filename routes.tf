#Creating Route table
resource "aws_route_table" "OpstreePrivateRT" {
  vpc_id = aws_vpc.OpstreeVPC.id 

  route = []

  tags = {
    Name = "OpstreePrivateRT"
  }
}

resource "aws_route_table" "OpstreePublicRT" {
  vpc_id = aws_vpc.OpstreeVPC.id 

  route = []

  tags = {
    Name = "OpstreePublicRT"
  }
}

resource "aws_route_table_association" "OpstreePrivateRTAssociate" {
  subnet_id      = aws_subnet.OpstreePrivateSubnet.id
  route_table_id = aws_route_table.OpstreePrivateRT.id
}


resource "aws_route_table_association" "OpstreePublicRTAssociate" {
  subnet_id      = aws_subnet.OpstreePublicSubnet.id
  route_table_id = aws_route_table.OpstreePublicRT.id
}

resource "aws_route" "OpstreePublicRoute" {
  route_table_id            = aws_route_table.OpstreePublicRT.id
  destination_cidr_block    = var.rt_destination_cidr
  gateway_id = aws_internet_gateway.OpstreeIGW.id
}