resource "aws_vpc" "main" {
 cidr_block           = var.vpc_cidr
 enable_dns_hostnames = true
 tags = {
   name = "main"
 }
}


resource "aws_subnet" "subnet" {
 vpc_id                  = aws_vpc.main.id
 cidr_block              = cidrsubnet(aws_vpc.main.cidr_block, 8, 1)
 map_public_ip_on_launch = true
 availability_zone       = "us-east-1a"
}

resource "aws_subnet" "subnet2" {
 vpc_id                  = aws_vpc.main.id
 cidr_block              = cidrsubnet(aws_vpc.main.cidr_block, 8, 2)
 map_public_ip_on_launch = true
 availability_zone       = "us-east-1b"
}
