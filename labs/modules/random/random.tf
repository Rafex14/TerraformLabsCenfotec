resource "random_string" "random" {
  length           = var.lenght
  special          = true
  override_special = "/@£$"
}