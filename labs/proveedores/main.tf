resource "local_file" "password" {
  content  = "Password: ${random_string.iac_random.id}" //concatenar
  filename = "password.txt"
  file_permission = "0400"
  directory_permission = "0600"
  
}

output "content1" {
description = "test"
value = local_file.password.content
}

