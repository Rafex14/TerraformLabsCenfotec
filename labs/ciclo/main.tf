resource "local_file" "archivo" {
  filename        = var.filename
  file_permission = "0700"
  content         = "contenido 123"

  lifecycle {
    #create_before_destroy = true
    #prevent_destroy = true -- evita el apply e incluso el destroy
    ignore_changes = [content]
  }

}

moved {
  from = local_file.file
  to   = local_file.archivo
}