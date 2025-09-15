resource "tls_private_key" "tls" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "local_file" "private_key_pem" {
  content  = tls_private_key.tls.private_key_pem
  filename = "${path.root}/id_rsa"
  file_permission = "0400"
}