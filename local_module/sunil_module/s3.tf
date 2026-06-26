resource "aws_s3_bucket" "bucket-1" {
  bucket = "${var.env}-bucket-1999"

  tags = {
    name = "${var.env}-sunil-bucket-1999"
    env = "${var.env}"
  }
}