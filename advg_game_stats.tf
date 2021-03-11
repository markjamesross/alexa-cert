resource "aws_dynamodb_table" "advg_game_stats" {
  name         = "AdvgGameStats"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "PlayerNumber"
  range_key    = "CountryId"

  attribute {
    name = "CountryId"
    type = "S"
  }

  attribute {
    name = "PlayerNumber"
    type = "N"
  }

  attribute {
    name = "ActiveFlag"
    type = "S"
  }

  local_secondary_index {
    name            = "PlayerNumber-ActiveFlag-index"
    range_key       = "ActiveFlag"
    projection_type = "ALL"
  }

  tags = merge({ Name = "AdvgGameStats" }, var.tags)
}