data "aws_route53_zone" "mtek" {
  name         = "mtek.site" #could use an Env Var, or tfvars
  private_zone = false
}

resource "aws_acm_certificate" "acm_cert" {
  domain_name       = data.aws_route53_zone.mtek.name
  validation_method = "DNS"
}


resource "aws_route53_record" "val_record" {
  for_each = {
    for dvo in aws_acm_certificate.acm_cert.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = data.aws_route53_zone.mtek.zone_id
}

resource "aws_acm_certificate_validation" "acm_val" {
  certificate_arn         = aws_acm_certificate.acm_cert.arn
  validation_record_fqdns = [for record in aws_route53_record.val_record : record.fqdn]
}

# Outputs
output "acm_certificate_id" {
  value = aws_acm_certificate.acm_cert.id 
}

output "acm_certificate_arn" {
  value = aws_acm_certificate.acm_cert.arn
}

output "acm_certificate_status" {
  value = aws_acm_certificate.acm_cert.status
}
