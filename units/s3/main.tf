resource "random_pet" "bucket_name" {}

variable "region" {
    type = string
}

output "bucket_name" {
    value = "${random_pet.bucket_name.id}-${var.region}"
}