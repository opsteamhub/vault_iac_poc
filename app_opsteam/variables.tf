variable "engine_path" {
  description = "The Engine Path"
  type        = string
}

variable "engine_type" {
  description = "The Engine Type"
  type        = string
  default     = "kv"
}

variable "engine_api_version" {
  description = "The Engine API Version"
  type        = number
  default     = 2
}

variable "engine_description" {
  description = "The Engine Description"
  type        = string
  default     = "Key/Value Storage"
}

variable "secret_path" {
  description = "The Secret Path"
  type        = string
}

variable "secrets" {
  description = "The list of Secrets"
  type        = map(string)
}
