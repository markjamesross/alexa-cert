resource "aws_dynamodb_table" "advg_story_details" {
  name         = "AdvgStoryDetails"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "CountryId"
  range_key    = "QuestionNumber"

  attribute {
    name = "CountryId"
    type = "S"
  }

  attribute {
    name = "QuestionNumber"
    type = "N"
  }

  tags = merge({ Name = "AdvgStoryDetails" }, var.tags)
}

resource "aws_dynamodb_table_item" "advg_story_details_1" {
  table_name = aws_dynamodb_table.advg_story_details.name
  hash_key   = aws_dynamodb_table.advg_story_details.hash_key
  range_key  = aws_dynamodb_table.advg_story_details.range_key

  item = <<ITEM
{
  "CountryId": {"S": "1"},
  "QuestionNumber": {"N": "1"},
  "NoEnergyImpact": {"N": "5"},
  "NoResponseText": {"S": "Oh no, your wealth decreases by 5 and your energy increases by 5."},
  "NoWealthImpact": {"N": "-5"},
  "Tip": {"S": "You can't visit Italy without taking a gondola ride. Go for it!"},
  "YesEnergyImpact": {"N": "10"},
  "YesResponseText": {"S": "You've made a great choice adventurer. You Wealth decreases by 10 but your energy increases by 5."},
  "YesWealthImpact": {"N": "-10"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_story_details_2" {
  table_name = aws_dynamodb_table.advg_story_details.name
  hash_key   = aws_dynamodb_table.advg_story_details.hash_key
  range_key  = aws_dynamodb_table.advg_story_details.range_key

  item = <<ITEM
{
  "CountryId": {"S": "1"},
  "QuestionNumber": {"N": "2"},
  "NoEnergyImpact": {"N": "5"},
  "NoResponseText": {"S": "The commotion in the square was a violent protest. Good job adventurer, you do not have to run away. Your energy increases by 5."},
  "NoWealthImpact": {"N": "0"},
  "Tip": {"S": "I see police officers in the square. I wouldn't risk it."},
  "YesEnergyImpact": {"N": "0"},
  "YesResponseText": {"S": "Oh no, adventurer. The protest in the square was a violent protest. You get locked up in jail. But you're in luck, you can pay to get out. Your wealth decreases by 5."},
  "YesWealthImpact": {"N": "-5"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_story_details_3" {
  table_name = aws_dynamodb_table.advg_story_details.name
  hash_key   = aws_dynamodb_table.advg_story_details.hash_key
  range_key  = aws_dynamodb_table.advg_story_details.range_key

  item = <<ITEM
{
  "CountryId": {"S": "2"},
  "QuestionNumber": {"N": "3"},
  "NoEnergyImpact": {"N": "5"},
  "NoResponseText": {"S": "Great choice, the sheep dog is not too friendly. He tends to chase strangers. Your wealth stays the same and your engergy increases by 5."},
  "NoWealthImpact": {"N": "0"},
  "Tip": {"S": "I've heard the sheep dog is not too friendly."},
  "YesEnergyImpact": {"N": "-5"},
  "YesResponseText": {"S": "Oh no! The sheep dog doesn't like you. He spends most of his time chasing you. Your wealth decreases by 5 and your energy decreases by 5."},
  "YesWealthImpact": {"N": "-10"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_story_details_4" {
  table_name = aws_dynamodb_table.advg_story_details.name
  hash_key   = aws_dynamodb_table.advg_story_details.hash_key
  range_key  = aws_dynamodb_table.advg_story_details.range_key

  item = <<ITEM
{
  "CountryId": {"S": "1"},
  "QuestionNumber": {"N": "3"},
  "NoEnergyImpact": {"N": "-5"},
  "NoResponseText": {"S": "Oh no, now you have to pay double the price when your travel partner decides to take this tour later during your adventure. Your wealth decreases by 10 and your energy descreases by 5."},
  "NoWealthImpact": {"N": "-10"},
  "Tip": {"S": "A private pasta-making lesson at a working Tuscan farm? That sounds like fun adventurer."},
  "YesEnergyImpact": {"N": "10"},
  "YesResponseText": {"S": "You've made a great choice adventurer. You Wealth increases by 10 and your energy increases by 10."},
  "YesWealthImpact": {"N": "10"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_story_details_5" {
  table_name = aws_dynamodb_table.advg_story_details.name
  hash_key   = aws_dynamodb_table.advg_story_details.hash_key
  range_key  = aws_dynamodb_table.advg_story_details.range_key

  item = <<ITEM
{
  "CountryId": {"S": "1"},
  "QuestionNumber": {"N": "4"},
  "NoEnergyImpact": {"N": "-10"},
  "NoResponseText": {"S": "Oh no, you found it thrilling to pretend to be one of the gladiators, but you are now exhausted. Your wealth stays the same and your energy descreases by 10."},
  "NoWealthImpact": {"N": "0"},
  "Tip": {"S": "Touring the colosseum can be a rather exhausting experience."},
  "YesEnergyImpact": {"N": "15"},
  "YesResponseText": {"S": "You've made a great choice adventurer. You take a quick rest during your adventure, you wealth decreases by 5 and your energy increases by 15."},
  "YesWealthImpact": {"N": "-5"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_story_details_6" {
  table_name = aws_dynamodb_table.advg_story_details.name
  hash_key   = aws_dynamodb_table.advg_story_details.hash_key
  range_key  = aws_dynamodb_table.advg_story_details.range_key

  item = <<ITEM
{
  "CountryId": {"S": "2"},
  "QuestionNumber": {"N": "1"},
  "NoEnergyImpact": {"N": "10"},
  "NoResponseText": {"S": "Great choice adventurer, after flying for hours to reach Australia, rest is exactly what you need. Your wealth stays the same and your energy increases by 10."},
  "NoWealthImpact": {"N": "0"},
  "Tip": {"S": "Taking this tour right when you land could be rather exhausting."},
  "YesEnergyImpact": {"N": "-5"},
  "YesResponseText": {"S": "Oh no, after flying for hours to reach Australia, you are too exhausted to enjoy the tour. Your wealth stays the same but your energy decreases by 5."},
  "YesWealthImpact": {"N": "0"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_story_details_7" {
  table_name = aws_dynamodb_table.advg_story_details.name
  hash_key   = aws_dynamodb_table.advg_story_details.hash_key
  range_key  = aws_dynamodb_table.advg_story_details.range_key

  item = <<ITEM
{
  "CountryId": {"S": "2"},
  "QuestionNumber": {"N": "2"},
  "NoEnergyImpact": {"N": "-10"},
  "NoResponseText": {"S": "The camel could have really helped you to explore the desert. Your wealth decreases by 5 becasue you call an Uber to leave early and your energy decreases by 10."},
  "NoWealthImpact": {"N": "-5"},
  "Tip": {"S": "Taking this tour right when you land could be rather exhausting."},
  "YesEnergyImpact": {"N": "5"},
  "YesResponseText": {"S": "Great choice adventurer. The camel saves your energy and allows you to see more of the desert. Your wealth decreases by 5 and your energy increases by 10."},
  "YesWealthImpact": {"N": "-10"}
}
ITEM
}