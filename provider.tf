variable "tenancy_ocid" { type = string }
variable "user_ocid" { type = string }
variable "private_key_path" { type = string }
variable "fingerprint" { type = string }
variable "region" { type = string }
variable "api_key" { type = string }


terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.25.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.api_key

}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  private_key_path = var.private_key_path
  fingerprint      = var.fingerprint
  region           = var.region

}
