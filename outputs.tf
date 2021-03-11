output "cloudfront_domain_name" {
  value       = aws_cloudfront_distribution.s3_distribution.domain_name
  description = "Domain name of the CloudFront distribution"
}

output "s3_bucket_domain_name" {
  value       = aws_s3_bucket.alexa-cert.bucket_domain_name
  description = "Domain name of the S3 Bucket"
}

output "backend_lambda_arn" {
  value       = aws_lambda_function.backend.arn
  description = "ARN of the backend Lambda function.  Required to enter in the Alexa Developer Console"
}