#resource "pgp_key" "encry_decry_key" {
#  name    = "encry_decry_key"
#  email   = "encry_decry_key@testing.com"
#  comment = "encry_decry_key"
#}

data "local_file" "filename" {
  filename = "${path.module}/${var.filename}"
}

data "local_file" "private_key" {
  filename = "${path.module}/${var.private_key}"
}

data "pgp_decrypt" "decrypt_file" {
  ciphertext  = data.local_file.filename.content
  private_key = data.local_file.private_key.content
}

resource "local_sensitive_file" "filename_output" {
  content  =  data.pgp_decrypt.decrypt_file.plaintext
  filename = "${path.module}/${var.filename_output}"
}

