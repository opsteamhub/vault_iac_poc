resource "pgp_key" "testing" {
  name    = "testing"
  email   = "testing@testing.com"
  comment = "testing"
}

data "local_file" "filename" {
  filename = "${path.module}/${var.filename}"
}

data "pgp_encrypt" "testing" {
  plaintext = data.local_file.filename.content
  public_key = pgp_key.testing.public_key
}

data "pgp_decrypt" "testing" {
  ciphertext  = data.pgp_encrypt.testing.ciphertext
  private_key = pgp_key.testing.private_key
}
