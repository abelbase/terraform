output "output_tls_public_key" {
  value = tls_private_key.tls.public_key_openssh
}

output "output_tls_private_key" {
  value     = tls_private_key.tls.private_key_pem
}

output "output_local_id_rsa"{
  value = local_file.private_key_pem.content
  sensitive = true
}