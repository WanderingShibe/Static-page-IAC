variable "compartment_id" { type = string }
variable "shape" { type = string }
variable "source_id" { type = string }
variable "source_type" { type = string }
variable "display_name" { type = string }
variable "subnet_id" { type = string }
variable "public_ssh_key" { type = string }

resource "oci_core_instance" "ubuntu_instance" {
  # Required
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = var.compartment_id
  shape               = var.shape
  source_details {
    source_id   = var.source_id
    source_type = var.source_type
  }

  # Optional
  display_name = var.display_name
  create_vnic_details {
    assign_public_ip = true
    subnet_id        = var.subnet_id
  }
  metadata = {
    ssh_authorized_keys = file(var.public_ssh_key)
  }
  preserve_boot_volume = false
}
