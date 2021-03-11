resource "aws_lambda_function" "backend" {
  filename         = "./lambda/backend/lambda_function.zip"
  source_code_hash = filebase64sha256("./lambda/backend/lambda_function.zip")
  function_name    = "adventure-guru"
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = "lambda_function.handler"
  runtime          = "python3.7"
  memory_size      = 256
  timeout          = 7

  environment {
    variables = {
      LOG_LEVEL              = "10"
    }
  }

  tags = merge({ Name = "adventure-guru" }, var.tags)
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam-for-lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

  tags = merge({ Name = "iam-for-lambda" }, var.tags)
}

resource "aws_iam_role_policy_attachment" "basic" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = aws_iam_role.iam_for_lambda.name
}

resource "aws_iam_role_policy_attachment" "dynamodb" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = aws_iam_role.iam_for_lambda.name
}

resource "aws_cloudwatch_log_group" "alexa" {
  name              = "/aws/lambda/adventure-guru"
  retention_in_days = 14
}

resource "aws_lambda_permission" "allow_alexa" {
  statement_id       = "AllowExecutionFromAlexa"
  action             = "lambda:InvokeFunction"
  function_name      = aws_lambda_function.backend.function_name
  principal          = "alexa-appkit.amazon.com"
  event_source_token = var.skill_id
}