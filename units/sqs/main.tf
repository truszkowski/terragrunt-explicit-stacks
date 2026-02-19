resource "random_pet" "queue_name" {}

variable "region" {
    type = string
}

output "queue_name" {
    value = random_pet.queue_name.id
}