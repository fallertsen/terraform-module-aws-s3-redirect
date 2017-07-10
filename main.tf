resource "aws_s3_bucket" "www-redirect" {
  bucket = "${var.domain}"
  acl    = "private"

  website {
    redirect_all_requests_to = "${var.redirect}"
  }
}
