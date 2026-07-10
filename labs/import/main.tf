resource "aws_instance" "demo_import" {
  ami               = "ami-033b95fb8079dc481"
  instance_type     = "t3a.nano"
  availability_zone = "us-east-1f"
  subnet_id         = "subnet-0a0b8ea02fae6df7c"
}