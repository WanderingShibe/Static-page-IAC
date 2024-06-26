variable "vcn_name" { type = string }
variable "vcn_dns_label" { type = string }

module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.1.0"

  compartment_id = var.compartment_id
  region         = var.region

  internet_gateway_route_rules = null
  local_peering_gateways       = null
  nat_gateway_route_rules      = null

  # Optional Inputs
  vcn_name      = var.vcn_name
  vcn_dns_label = var.vcn_dns_label
  vcn_cidrs     = ["10.0.0.0/16"]

  create_internet_gateway = true
  #create_nat_gateway      = true
  #create_service_gateway  = true
}
