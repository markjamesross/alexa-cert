variable "region" {
  description = "Region to deploy to"
  type        = string
}

variable "skill_id" {
  description = "Alexa skill ID (retrieve this from the Alexa Developer Console)"
  type        = string
}

variable "bucket_prefix" {
  description = "S3 bucket prefix, with have account number apended to the name"
  type        = string
  default     = "my-alexa-cert-bucket-"
}

variable "cloudfront_name" {
  description = "CloudFront distribution name"
  type        = string
  default     = "my-alexa-cert-s3-origin"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(any)
  default = {
    Environment = "Alexa-Certification"
  }
}