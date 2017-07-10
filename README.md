Terraform module for S3 redirects
=================================

This is a terraform module that let's you create a redirect using S3.

AWS S3 let's you create a bucket where the only purpose is to perform a 301
redirect when called via an HTTP request.
This module allows you to create a bucket configured this way in a simple way.

Input variables
---------------

- `domain` - The domain to be used as the redirect host
- `redirect` - The URL location where the redirect must be performed

Usage
-----

This is a short example on how you can use the module in a simple template file,
e.g. `main.tf`.

```
module "redirect" {
    source = "github.com/fallertsen/terraform-module-aws-s3-redirect"

    domain = "example.com"
    redirect = "www.example.com"
}
```

This will create a new bucket called `example.com` and when an HTTP request will
be performed on that bucket public endpoint it will return a 301 redirect to
`www.example.com`.

Output variables
----------------

- `website_endpoint` - The endpoint of the bucket
- `website_domain` - The domain of the endpoint, this is used for Route53 alias records
- `hosted_zone_id` - The Route53 hosted zone id of the bucket region
