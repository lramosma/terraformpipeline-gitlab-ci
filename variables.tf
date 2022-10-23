variable "location" {
    description = "Variavel que indica a regiao onde os recursos serao criados"
    type = string
    default = "South America"
}

variable "aws_pub_key" {
  description = "Public key para VM na AWS"
  type = string
  }