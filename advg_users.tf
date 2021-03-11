resource "aws_dynamodb_table" "advg_users" {
  name         = "AdvgUsers"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "UserId"
  range_key    = "PlayerNumber"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "PlayerNumber"
    type = "N"
  }

  attribute {
    name = "MaxTurns"
    type = "N"
  }

  global_secondary_index {
    name            = "MaxTurns-index"
    hash_key        = "MaxTurns"
    projection_type = "ALL"
  }

  tags = merge({ Name = "AdvgUsers" }, var.tags)
}
