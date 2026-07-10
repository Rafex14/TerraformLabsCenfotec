variable "region" {
  type = map(any)
  default = {
    "prod" = "us-west-1"
    "dev"  = "us-west-2"
  }
}

variable "ami" {
  type = map(any)
  default = {
    "dev"  = "ami-019e303fb672172fc"
    "prod" = "ami-01a694e4a87a9d197"
  }
}

variable "instance" {
  type = map(any)
  default = {
    "dev"  = "t3a.nano"
    "prod" = "t3a.micro"
  }
}

variable "vpc_cidr" {
  type = map(any)
  default = {
    "dev"  = "10.0.0.0/24"
    "prod" = "10.0.0.0/24"
  }
}

variable "subnet_cidr" {
  type = map(any)
  default = {
    "dev"  = "10.0.0.0/28"
    "prod" = "10.0.0.0/28"
  }
}

variable "tags" {
  type = map(any)
  default = {
    "dev" = "Rafael Cortes - Dev"
    "prod" = "Rafael Cortes - Prod"
  }
}

/*variable "zone" {
  type = map(any)
  default = {
    "prod" = "us-east-1"
    "dev"  = "us-east-2"
  }
}*/