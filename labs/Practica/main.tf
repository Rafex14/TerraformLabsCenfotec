resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "local_sensitive_file" "key_pem" {
  content  = tls_private_key.private_key.private_key_pem
  filename = "${var.key_name}.pem"
}

provider "aws" {
  region = "ca-central-1"
}

terraform {
  required_providers {
    aws = {
      version = "~> 4.0"
    }
  }
}

resource "aws_s3_bucket" "practica_bucket_name" {
  bucket = var.bucket_name
}

resource "aws_s3_object" "practica_file" {
  depends_on = [aws_s3_bucket.practica_bucket_name, aws_s3_bucket_ownership_controls.owner]

  bucket       = aws_s3_bucket.practica_bucket_name.id
  key          = "${var.key_name}.pem"
  source       = "/home/azureuser/TerraformLabs/labs/Practica/${var.key_name}.pem"
  content_type = "application/x-pem-file"

}

resource "aws_s3_bucket_ownership_controls" "owner" {
  bucket = aws_s3_bucket.practica_bucket_name.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_vpc" "mi_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "lab-${var.student_name}"
  }
}
