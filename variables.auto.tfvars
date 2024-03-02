#Provider
tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaa44lgjvd3jfviprvf2yeuhmlty56cyy5dx7gdxnfhketzc73mlmja"
user_ocid        = "ocid1.user.oc1..aaaaaaaadsuus2zclo3d64ugowuoc564jfl2ewplsyzycmewd32qaqtuwwxq"
private_key_path = "C:\\Users\\Aria Lodis\\Oracle-Terraform\\.oci\\karlodukwe@gmail.com_2024-02-27T15 40 04.751Z.pem"
fingerprint      = "08:fb:31:cb:02:88:1b:27:3a:4d:69:d8:c5:84:fa:ea"
region           = "uk-london-1"


#Compartment
compartment_id   = "ocid1.tenancy.oc1..aaaaaaaa44lgjvd3jfviprvf2yeuhmlty56cyy5dx7gdxnfhketzc73mlmja"
description      = "Compartment for Terraform resources."
compartment_name = "oci-compartment-1"


#Compute
shape          = "VM.Standard.E2.1.Micro"
source_id      = "ocid1.image.oc1.uk-london-1.aaaaaaaae5jkggzpghgfllliqopjupxceevyeyuhcq575lxizpbsnqihxpvq"
source_type    = "image"
display_name   = "free-tier-ubuntu-vm"
subnet_id      = "ocid1.subnet.oc1.uk-london-1.aaaaaaaamey6jxonqvys7wrcu6nvko5xbvitw55vgt4qemlxqxdjmyxspa7q"
public_ssh_key = "C:\\Users\\Aria Lodis\\Oracle-Terraform\\.ssh\\lodis-ssh-key.pub"

#VCN
vcn_name      = "lodis-vcn-2"
vcn_dns_label = "vcnmodule"
