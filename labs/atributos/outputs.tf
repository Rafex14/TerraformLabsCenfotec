output "salida" {
  value = time_static.time_update
}

output "fechahora" {
  value= "Fecha y Hora: ${time_static.time_update.id}"
}