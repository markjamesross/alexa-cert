resource "aws_dynamodb_table" "advg_countries" {
  name         = "AdvgCountries"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "CountryId"

  attribute {
    name = "CountryId"
    type = "S"
  }

  attribute {
    name = "Name"
    type = "S"
  }

  global_secondary_index {
    name            = "Name-index"
    hash_key        = "Name"
    projection_type = "ALL"
  }

  tags = merge({ Name = "AdvgCountries" }, var.tags)
}

resource "aws_dynamodb_table_item" "advg_countries_1" {
  table_name = aws_dynamodb_table.advg_countries.name
  hash_key   = aws_dynamodb_table.advg_countries.hash_key

  item = <<ITEM
{
  "CountryId": {"S": "1"},
  "Name": {"S": "Italy"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_countries_2" {
  table_name = aws_dynamodb_table.advg_countries.name
  hash_key   = aws_dynamodb_table.advg_countries.hash_key

  item = <<ITEM
{
  "CountryId": {"S": "2"},
  "Name": {"S": "Australia"}
}
ITEM
}