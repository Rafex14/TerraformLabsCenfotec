resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    owner = var.tags
    Name = "Subnet ${terraform.workspace}"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnet_cidr

  tags = {
    owner = var.tags
    Name = "Subnet ${terraform.workspace}"
  }
}