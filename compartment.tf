variable "compartment_id" { type = string }
variable "description" { type = string }
variable "compartment_name" { type = string }

resource "oci_identity_compartment" "tf-compartment" {
  # Required
  compartment_id = var.compartment_id
  description    = var.description
  name           = var.compartment_name
}
