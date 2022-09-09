#resource "pgp_key" "testing" {
#  name    = "testing"
#  email   = "testing@testing.com"
#  comment = "testing"
#}

data "local_file" "filename" {
  filename = "${path.module}/${var.filename}"
}

data "local_file" "public_key" {
  filename = "${path.module}/${var.public_key}"
}

data "local_file" "private_key" {
  filename = "${path.module}/${var.private_key}"
}

data "pgp_encrypt" "testing" {
  plaintext = data.local_file.filename.content
  public_key = data.local_file.public_key.content
}

data "pgp_decrypt" "testing" {
  ciphertext  = data.pgp_encrypt.testing.ciphertext
  private_key = data.local_file.private_key.content
}

resource "local_sensitive_file" "filename_output" {
  content  =  data.pgp_encrypt.testing.ciphertext
  filename = "${path.module}/${var.filename_output}"
}

