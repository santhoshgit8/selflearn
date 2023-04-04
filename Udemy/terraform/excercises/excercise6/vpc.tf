resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    tags = {
        Name = "vprofile"
    }
  
}
resource "aws_subnet" "pb1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.zone1
    tags = {
        Name = "pb1"
    }
}
resource "aws_subnet" "pb2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.zone2
    tags = {
        Name = "pb2"
    }
}
resource "aws_subnet" "pb3" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.3.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.zone3
    tags = {
        Name = "pb3"
    }
}
resource "aws_subnet" "pb4" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.4.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.zone4
    tags = {
        Name = "pb4"
    }
}

resource "aws_internet_gateway" "ig1" {
    vpc_id = aws_vpc.vpc.id
    tags = {
        Name ="ig1"
    }
  
}

resource "aws_route_table" "rt1" {
    vpc_id = aws_vpc.vpc.id

    route = {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ig1.id
    }
    tags = {
        Name = "rt1"
    }

}
resource "aws_route_table_association" "rta1" {
  
  subnet_id = aws_subnet.pb1.id
  route_table_id =  aws_route_table.rt1.id
}

resource "aws_route_table_association" "rta2" {
  
  subnet_id = aws_subnet.pb2.id
  route_table_id =  aws_route_table.rt1.id
}

