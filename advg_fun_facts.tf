resource "aws_dynamodb_table" "advg_fun_facts" {
  name         = "AdvgFunFacts"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "RecordNumber"

  attribute {
    name = "RecordNumber"
    type = "S"
  }

  tags = merge({ Name = "AdvgFunFacts" }, var.tags)
}

resource "aws_dynamodb_table_item" "advg_fun_facts_1" {
  table_name = aws_dynamodb_table.advg_fun_facts.name
  hash_key   = aws_dynamodb_table.advg_fun_facts.hash_key

  item = <<ITEM
{
  "RecordNumber": {"S": "1"},
  "CountryId": {"S": "1"},
  "Text": {"S": "Italy has more earthquakes than any other European country."}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_fun_facts2" {
  table_name = aws_dynamodb_table.advg_fun_facts.name
  hash_key   = aws_dynamodb_table.advg_fun_facts.hash_key

  item = <<ITEM
{
  "RecordNumber": {"S": "2"},
  "CountryId": {"S": "2"},
  "Text": {"S": "The Great Barrier Reef is the largest eco-system in the world."}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_fun_facts_3" {
  table_name = aws_dynamodb_table.advg_fun_facts.name
  hash_key   = aws_dynamodb_table.advg_fun_facts.hash_key

  item = <<ITEM
{
  "RecordNumber": {"S": "3"},
  "CountryId": {"S": "1"},
  "Text": {"S": "The colors of the Italian flag–green, white, and red–have special meaning. Green represents hope, white represents faith, and red signals charity."}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_fun_facts_4" {
  table_name = aws_dynamodb_table.advg_fun_facts.name
  hash_key   = aws_dynamodb_table.advg_fun_facts.hash_key

  item = <<ITEM
{
  "RecordNumber": {"S": "4"},
  "CountryId": {"S": "1"},
  "Text": {"S": "Another interesting fact about Italy, the capital city of Rome is almost 3,000 years old."}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_fun_facts_5" {
  table_name = aws_dynamodb_table.advg_fun_facts.name
  hash_key   = aws_dynamodb_table.advg_fun_facts.hash_key

  item = <<ITEM
{
  "RecordNumber": {"S": "5"},
  "CountryId": {"S": "2"},
  "Text": {"S": "Tasmania has the cleanest air in the world."}
}
ITEM
}
