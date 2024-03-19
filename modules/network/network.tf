

resource "random_id" "id" {
    byte_length = 1
  
}


# creating VPC

resource "aws_vpc" "wafaa_vpc" {
  cidr_block  = var.vpc
  tags = {
    Name = "wafaa_vpc"
  }
}

# creatin Private_Subnet

resource "aws_subnet" "wafaa_subnet" {
  vpc_id     = aws_vpc.wafaa_vpc.id
  cidr_block = var.private

  tags = {
    Name = "wafaa_subnet"
  }
}
#creating Public_Subnet

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.wafaa_vpc.id
  cidr_block        = var.public
  map_public_ip_on_launch = true
}


# creating Internet_Gateway

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.wafaa_vpc.id

  tags = {
    Name = "internet_gateway"
  }
}

#creating Route_Table

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.wafaa_vpc.id

  route {
    cidr_block = var.route_table
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "route_table"
  }
}

# creating Route_Table_Association

resource "aws_route_table_association" "association_route_table" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.route_table.id
}

#creating Route_Table_Association_internet_gateway

resource "aws_route_table_association" "association_internet_gateway" {
  gateway_id     = aws_internet_gateway.internet_gateway.id
  route_table_id = aws_route_table.route_table.id
}


