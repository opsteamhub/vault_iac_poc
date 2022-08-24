#variable "secret_id" {
#  description = "The Secret ID"
#  type        = string
#}

variable "secret_path" {
  description = "The Secret Path"
  type        = string
}

variable "secrets" {
  description = "The list of Secrets"
  type        = map(string)
}
