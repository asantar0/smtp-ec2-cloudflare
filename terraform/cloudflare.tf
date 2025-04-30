resource "cloudflare_dns_record" "A_Record" {
  zone_id = var.zone_id
  comment = "A Record for SMTP Server"
  content = aws_instance.SMTP-Server-instance.public_ip
  name    = "mail.root-view.online"
  proxied = false
  ttl     = 1
  type    = "A"

  settings = {
    ipv4_only = false
    ipv6_only = false
  }
}

resource "cloudflare_dns_record" "MX_Record" {
  zone_id  = var.zone_id
  comment  = "MX Record for SMTP Server"
  content  = "mail.root-view.online"
  name     = "@"
  proxied  = false
  ttl      = 1
  type     = "MX"
  priority = 10

  settings = {
    ipv4_only = false
    ipv6_only = false
  }
}

resource "cloudflare_dns_record" "SPF_Record" {
  zone_id = var.zone_id
  comment = "SPF Record for SMTP Server"
  name    = "@"
  type    = "TXT"
  content = "v=spf1 v=spf1 include:root-view.online -all"
  ttl     = 3600
  proxied = false
}

resource "cloudflare_dns_record" "DMARC_Record" {
  zone_id = var.zone_id
  comment = "DMARC Record for SMTP Server"
  name    = "_dmarc"
  type    = "TXT"
  content = "v=DMARC1; p=none; rua=mailto:security@root-view.online"
  ttl     = 3600
  proxied = false
}
