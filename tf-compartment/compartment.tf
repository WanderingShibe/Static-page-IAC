variable "compartment_id" { type = string }
variable "description" { type = string }
variable "name" { type = string }

resource "oci_identity_compartment" "tf-compartment" {
  # Required
  compartment_id = var.compartment_id
  description    = var.description
  name           = var.name
}
