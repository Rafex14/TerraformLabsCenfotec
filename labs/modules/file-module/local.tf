resource "local_file" "module-demo" {
  filename = var.in-filename
  content  = var.in-filecontent
  file_permission = var.in-filepermission
}