resource "aws_s3_bucket" "alexa-cert" {
  bucket        = "${var.bucket_prefix}${data.aws_caller_identity.current.account_id}"
  policy        = data.aws_iam_policy_document.alexa-cert.json
  force_destroy = true

  tags = merge({ Name = "${var.bucket_prefix}-${data.aws_caller_identity.current.account_id}" }, var.tags)
}

data "aws_iam_policy_document" "alexa-cert" {
  statement {
    sid       = "CloudFront Origin Access ID access to S3"
    actions   = ["s3:GetObject"]
    resources = ["arn:aws:s3:::${var.bucket_prefix}${data.aws_caller_identity.current.account_id}/*"]

    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.alexa-cert.iam_arn]
    }
  }
}

resource "aws_s3_bucket_object" "aussie2" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "aussie2.jpeg"
  source       = "s3-objects/aussie2.jpeg"
  content_type = "image/jpeg"
}

resource "aws_s3_bucket_object" "aussie3" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "aussie3.jpeg"
  source       = "s3-objects/aussie3.jpeg"
  content_type = "image/jpeg"
}

resource "aws_s3_bucket_object" "australiac" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "australiac.mp3"
  source       = "s3-objects/australiac.mp3"
  content_type = "audio/mp3"
}

resource "aws_s3_bucket_object" "egypt" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "egypt.jpg"
  source       = "s3-objects/egypt.jpg"
  content_type = "image/jpeg"
}

resource "aws_s3_bucket_object" "greece" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "greece.jpg"
  source       = "s3-objects/greece.jpg"
  content_type = "image/jpeg"
}

resource "aws_s3_bucket_object" "italy" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "italy.jpg"
  source       = "s3-objects/italy.jpg"
  content_type = "image/jpeg"
}

resource "aws_s3_bucket_object" "italyc" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "italyc.mp3"
  source       = "s3-objects/italyc.mp3"
  content_type = "audio/mp3"
}

resource "aws_s3_bucket_object" "logourl" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "logoUrl.png"
  source       = "s3-objects/logoUrl.png"
  content_type = "png"
}

resource "aws_s3_bucket_object" "london" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "london.jpg"
  source       = "s3-objects/london.jpg"
  content_type = "image/jpeg"
}

resource "aws_s3_bucket_object" "travel-large" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "travel-large.jpg"
  source       = "s3-objects/travel-large.jpeg"
  content_type = "image/jpeg"
}

resource "aws_s3_bucket_object" "travel-small" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "travel-small.jpg"
  source       = "s3-objects/travel-small.jpeg"
  content_type = "image/jpeg"
}

resource "aws_s3_bucket_object" "travel2" {
  bucket       = aws_s3_bucket.alexa-cert.id
  key          = "travel2.jpg"
  source       = "s3-objects/travel2.jpg"
  content_type = "image/jpeg"
}