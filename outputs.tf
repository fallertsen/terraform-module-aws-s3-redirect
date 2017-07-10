output "website_endpoint" {
    value = "${aws_s3_bucket.www-redirect.website_endpoint}"
}

output "website_domain" {
    value = "${aws_s3_bucket.www-redirect.website_domain}"
}

output "hosted_zone_id" {
    value = "${aws_s3_bucket.www-redirect.hosted_zone_id}"
}
