variable "hostname" { type = string }
variable "hostname_IP" { type = string }
variable "zone_id" { type = string }
variable "type" { type = string }
variable "ttl" { type = string }

resource "cloudflare_record" "wanderingshibe" {
  name    = var.hostname
  value   = var.hostname_IP
  type    = var.type
  ttl     = var.ttl
  zone_id = var.zone_id
}
