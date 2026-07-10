output "public_ip" {
  value = aws_instance.instance.associate_public_ip_address
}

output "instance_id" {
  value = aws_instance.instance.id
}

output "tag_name" {
  value = aws_instance.instance.tags
}

output "availability_zone" {
  value = aws_instance.instance.availability_zone
}
