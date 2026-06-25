# creating s3 bucket
resource "aws_s3_bucket" "bucket-1" {
  bucket = "sunil-bucket-1999"

  tags = {
    name = "sunil_76196891"
  }
}