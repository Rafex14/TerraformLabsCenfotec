#infra

output "public_ip" {
  value = module.infra.public_ip
}

output "instance_id" {
  value = module.infra.instance_id
}

output "tag_name" {
  value = module.infra.tag_name
}

output "availability_zone" {
  value = module.infra.availability_zone
}

#network

output "vpc_id" {
  value = module.network.vpc_id
}

output "subnet_id" {
  value = module.network.subnet
}


