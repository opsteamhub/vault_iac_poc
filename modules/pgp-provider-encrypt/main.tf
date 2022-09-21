#resource "pgp_key" "encry_decry_key" {
#  name    = "encry_decry_key"
#  email   = "encry_decry_key@testing.com"
#  comment = "encry_decry_key"
#}

# data "local_file" "filename" {
#   filename = "${path.module}/${var.filename}"
# }

data "local_file" "public_key" {
  filename = "${path.module}/${var.public_key}"
}

data "pgp_encrypt" "encrypt_file" {
  # plaintext = data.local_file.filename.content
  plaintext = var.filename
  public_key = data.local_file.public_key.content
}

resource "local_sensitive_file" "filename_output" {
  content  =  data.pgp_encrypt.encrypt_file.ciphertext
  filename = "${path.module}/${var.filename_output}"
}

