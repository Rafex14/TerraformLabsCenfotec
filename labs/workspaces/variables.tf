variable "region" {
  type = map(any)
  default = {
    "segundo" = "us-west-1"
    "tercero" = "us-west-2"
  }

}
variable "ami" {
  type = map(any)
  default = {
    "segundo" = "ami-01a694e4a87a9d197"
    "tercero" = "ami-019e303fb672172fc"
  }
}