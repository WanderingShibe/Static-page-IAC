resource "oci_core_security_list" "public-security-list" {

  # Required
  compartment_id = var.compartment_id
  vcn_id         = module.vcn.vcn_id
  display_name   = "security-list-for-public-subnet"


  # Adding egress rules for security list
  egress_security_rules {
    stateless        = false
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol         = "all"
  }



  ingress_security_rules {
    stateless   = false
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    protocol = "6"
    tcp_options {
      min = 22
      max = 22
    }
  }
  ingress_security_rules {
    stateless   = false
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    protocol = "1"

    icmp_options {
      type = 3
      code = 4
    }
  }

  ingress_security_rules {
    stateless   = false
    source      = "10.0.0.0/16"
    source_type = "CIDR_BLOCK"
    protocol = "1"

    icmp_options {
      type = 3
    }
  }

  # Allow webserver to access neccessary ports
  ingress_security_rules {
    stateless   = false
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    protocol    = "6"
    tcp_options {
      min = 80
      max = 80
    }
  }

  ingress_security_rules {
    stateless   = false
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    protocol    = "6"
    tcp_options {
      min = 443
      max = 443
    }
  }


}

