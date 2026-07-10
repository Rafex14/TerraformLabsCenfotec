locals {
  filename = "test.txt"
}

module "file-module" {
  source      = "./file-module"
  in-filename = local.filename
  in-filecontent = "Archivo #1 ${module.random.out-random}"
  in-filepermission = "400"
}

module "file-module-dos" {
  source      = "./file-module"
  in-filename = "dos.txt"
  in-filecontent = "Archivo #2 ${module.random.out-random}"
  in-filepermission = "600"

}

module "random" {
  source = "./random"
  lenght = 15
}