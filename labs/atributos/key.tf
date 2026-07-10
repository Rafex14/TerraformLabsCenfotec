resource "tls_private_key" "private_key" {

algorithm = "RSA"
rsa_bits = 4096
  
}

resource "local_file" "key_file" {
  content = tls_private_key.private_key.private_key_pem
  filename = "key.pem"
}
