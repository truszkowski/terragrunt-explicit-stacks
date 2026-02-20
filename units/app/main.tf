resource "random_pet" "address" {}

variable "region" {
    type = string
}

variable "bucket_name" {
    type = string
}

variable "queue_name" {
    type = string
}

output "address" {
    value = random_pet.address.id + "-" + var.region
}