provider "aws" {
  region = lookup(var.region, terraform.workspace)
}

/*provider "google" {
  project = "tu-id-de-proyecto-gcp"
  region  = lookup(var.region, terraform.workspace)
  zone    = lookup(var.zone, terraform.workspace)
}*/
