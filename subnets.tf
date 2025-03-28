resource "aws_subnet" "web-subnet1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.web-subnet1-cidr
  availability_zone       = var.az-1
  map_public_ip_on_launch = true

  tags = {
    Name = var.web-subnet1-name
  }
}

resource "aws_subnet" "web-subnet2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.web-subnet2-cidr
  availability_zone       = var.az-2
  map_public_ip_on_launch = true

  tags = {
    Name = var.web-subnet2-name
  }
}

resource "aws_subnet" "app-subnet1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.app-subnet1-cidr
  availability_zone       = var.az-1
  map_public_ip_on_launch = false

  tags = {
    Name = var.app-subnet1-name
  }
}

resource "aws_subnet" "app-subnet2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.app-subnet2-cidr
  availability_zone       = var.az-2
  map_public_ip_on_launch = false

  tags = {
    Name = var.app-subnet2-name
  }
}

resource "aws_subnet" "db-subnet1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.db-subnet1-cidr
  availability_zone       = var.az-1
  map_public_ip_on_launch = false

  tags = {
    Name = var.db-subnet1-name
  }
}

resource "aws_subnet" "db-subnet2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.db-subnet2-cidr
  availability_zone       = var.az-2
  map_public_ip_on_launch = true

  tags = {
    Name = var.db-subnet2-name
  }
}

resource "aws_db_subnet_group" "subnet-grp" {
  name       = var.db-subnet-grp-name
  subnet_ids = [aws_subnet.db-subnet1.id,aws_subnet.db-subnet2.id]

  tags = {
    Name = var.db-subnet-grp-name
  }
}