provider "aws" {
  region = var.aws_region
}

resource "random_id" "tf_bucket_id" {
  byte_length = 2
  count       = var.number_of_instances
}

resource "aws_s3_bucket" "tf_code" {
  bucket        = "${var.project_name}-${random_id.tf_bucket_id.*.dec[count.index]}"
  acl           = "private"
  force_destroy = true
  count         = 2
  tags = {
    Name = "tf_bucket.${count.index + 1}"
  }
}