variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "eu-west-1"
}
variable "cluster-name" {
  default = "blog"
  type    = "string"
}
