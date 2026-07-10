resource "local_file" "demo01" {
  filename = "demo01.txt"
  content  = "Este es el primer lab de TF... segunda version"
  file_permission = "0644"
}
