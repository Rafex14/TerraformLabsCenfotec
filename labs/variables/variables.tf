variable "nombre" {
  type = string
  default = "Rafael"
}

variable "num" {
  type = number
  default = 100
}
//creando objetos
variable "persona" {
  type = map(any)
  default = {
    filename = "persona.txt"
    content = "Rafael Cortes Navarro"
  }
}

//listas
variable "genero" {
  type = list(string)
  default = [ "Masculino","Femenino","Otros" ]
}

variable "identificacion" {
  type = number
}

variable "discos" {
  type = map(any)
  description = "tipos de almacenamiento"
}