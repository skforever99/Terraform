resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "Sunil-dynamo-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockId"

  attribute {
    name = "LockId"
    type = "S"
  }


  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }

  tags = {
    Name        = "sunil-dynamo-table"
    Environment = "dev"
  }
}