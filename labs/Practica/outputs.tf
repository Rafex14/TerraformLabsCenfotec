output "vpc_id" {
  value = aws_vpc.mi_vpc.id
}

output "bucket_url" {
  value = "${aws_s3_object.practica_file.bucket}.s3.amazonaws.com/${aws_s3_object.practica_file.key}"
}

