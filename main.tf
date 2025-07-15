variable "country" {
  description = "A non-sensitive variable"
  type        = string
}

variable "secret" {
  description = "A sensitive variable"
  type        = string
  sensitive   = true
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Non-sensitive: ${var.country}, Sensitive: ${var.secret}'"
  }
}
