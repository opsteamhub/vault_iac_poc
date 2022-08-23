variable "secret_path" {
  description = "The Secret Path"
  type        = string
}

variable "secret_key" {
  description = "The Secret Key"
  type        = string
}

variable "secret_password" {
  description = "The Secret Value"
  type        = string
  sensitive = true
}

#export TF_VAR_secret_path="secret/foo" && export TF_VAR_secret_key="pizza" && export TF_VAR_secret_password="Y2hlZXNlCg=="
