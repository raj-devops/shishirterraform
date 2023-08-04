module "s3-module" {
  source      = "app.terraform.io/shishir_tcs/s3-module/cloud"
  version     = "1.0.0"
  name_bucket = var.s3_bucket_name
  tags_string = var.s3_bucket_tag
}
