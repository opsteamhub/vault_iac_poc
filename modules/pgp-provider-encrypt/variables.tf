variable "filename" {
  type        = string
  description = "Name of file to be encrypted"
}

variable "public_key" {
  type = string
  description = "Public key"
}

variable "filename_output" {
  type = string
  description = "File name"
}
