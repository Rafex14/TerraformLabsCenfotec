
data "aws_security_group" "selected" {
  id = var.security_group_id
}

data "aws_subnet" "selected" {
  cidr_block = var.subnet_id
  vpc_id     = data.aws_security_group.selected.vpc_id
}

resource "aws_instance" "instance" {
  ami = var.ami
  instance_type = var.instance
  subnet_id = data.aws_subnet.selected.id
  associate_public_ip_address = true
  tags = {
    owner = var.tags
    Name = "${terraform.workspace}-vm"
  }
  vpc_security_group_ids = [var.security_group_id]

}