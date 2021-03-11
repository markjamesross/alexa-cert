resource "aws_dynamodb_table" "advg_stories" {
  name         = "AdvgStories"
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

  tags = merge({ Name = "AdvgStories" }, var.tags)
}

resource "aws_dynamodb_table_item" "advg_stories_1" {
  table_name = aws_dynamodb_table.advg_stories.name
  hash_key   = aws_dynamodb_table.advg_stories.hash_key
  range_key  = aws_dynamodb_table.advg_stories.range_key

  item = <<ITEM
{
  "CountryId": {"S": "1"},
  "QuestionNumber": {"N": "1"},
  "QuestionText": {"S": "You see a gondola ride <audio src=\"soundbank://soundlibrary/boats_ships/oar_boat/oar_boat_01\"/> Do you take it, yes or no?"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_stories_2" {
  table_name = aws_dynamodb_table.advg_stories.name
  hash_key   = aws_dynamodb_table.advg_stories.hash_key
  range_key  = aws_dynamodb_table.advg_stories.range_key

  item = <<ITEM
{
  "CountryId": {"S": "1"},
  "QuestionNumber": {"N": "2"},
  "QuestionText": {"S": "You hear commotion and church bells ringing <audio src=\"soundbank://soundlibrary/musical/amzn_sfx_church_bell_1x_05\"/> Look it's in Saint Peter's square. Do you see what's going on, yes or no?"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_stories_3" {
  table_name = aws_dynamodb_table.advg_stories.name
  hash_key   = aws_dynamodb_table.advg_stories.hash_key
  range_key  = aws_dynamodb_table.advg_stories.range_key

  item = <<ITEM
{
  "CountryId": {"S": "2"},
  "QuestionNumber": {"N": "3"},
  "QuestionText": {"S": "<audio src=\"soundbank://soundlibrary/animals/amzn_sfx_horse_huff_whinny_01\"/> You've always wanted to live the life of an Australian Cowboy. You have the opportunity to herd and shear sheep. Do you take it, yes or no?"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_stories_4" {
  table_name = aws_dynamodb_table.advg_stories.name
  hash_key   = aws_dynamodb_table.advg_stories.hash_key
  range_key  = aws_dynamodb_table.advg_stories.range_key

  item = <<ITEM
{
  "CountryId": {"S": "1"},
  "QuestionNumber": {"N": "3"},
  "QuestionText": {"S": "As you're having lunch at La Pergola, <audio src=\"soundbank://soundlibrary/foley/amzn_sfx_restaurant_ambience_01\"/> someone offers you two free tickets to the Tuscan Pasta Making Class and Wine Tasting. Do you take it, yes or no?"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_stories_5" {
  table_name = aws_dynamodb_table.advg_stories.name
  hash_key   = aws_dynamodb_table.advg_stories.hash_key
  range_key  = aws_dynamodb_table.advg_stories.range_key

  item = <<ITEM
{
  "CountryId": {"S": "1"},
  "QuestionNumber": {"N": "4"},
  "QuestionText": {"S": "You've always imagined being one of the spectators when gladiators fought at the colosseum <audio src=\"soundbank://soundlibrary/swords/swords_03\"/> Do you walk through the history of Rome's majesty at the colosseum, yes or no?"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_stories_6" {
  table_name = aws_dynamodb_table.advg_stories.name
  hash_key   = aws_dynamodb_table.advg_stories.hash_key
  range_key  = aws_dynamodb_table.advg_stories.range_key

  item = <<ITEM
{
  "CountryId": {"S": "2"},
  "QuestionNumber": {"N": "1"},
  "QuestionText": {"S": "You land in scenic Sydney. <audio src=\"soundbank://soundlibrary/transportation/amzn_sfx_airplane_takeoff_whoosh_01\"/> When you leave the airport, you're offered a free tour via a harbour boat cruise that makes a stop by the magnificent Sydney Opera House. Do you take it, yes or no?"}
}
ITEM
}

resource "aws_dynamodb_table_item" "advg_stories_7" {
  table_name = aws_dynamodb_table.advg_stories.name
  hash_key   = aws_dynamodb_table.advg_stories.hash_key
  range_key  = aws_dynamodb_table.advg_stories.range_key

  item = <<ITEM
{
  "CountryId": {"S": "2"},
  "QuestionNumber": {"N": "2"},
  "QuestionText": {"S": "You're exploring the Red desert <audio src=\"soundbank://soundlibrary/nature/amzn_sfx_strong_wind_desert_01\"/> flora and fauna around you in breathtaking detail as you leisurely cross the vast expanse. You see a camel that you can ride. Do you get on it, yes or no?"}
}
ITEM
}
