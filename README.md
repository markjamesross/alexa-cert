# alexa-cert

Terraform module for setting up AWS backend for [ACloudGuru Alexa Certification Course](https://acloudguru.com/course/aws-certified-alexa-skill-builder-specialty)

Can help you to learn about [Amazon Alexa](https://developer.amazon.com/alexa) using [Amazon Web Services (AWS)](https://aws.amazon.com/)


Repo will setup all of the AWS hosted components within your account, once you create your first Python lambda_function.zip package.
As you go through the course follow the instructions to create the Lambda python zip files, and place in the existing lambda/backend folder.  It ust be called lambda_function.zip and re-run the terraform at each stage to update.

skill_id variable needs setting with your Skill ID from within the Alexa Developer Console.

#Usage 


<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14.0 |
| aws | >= 3.20.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.20.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bucket\_prefix | S3 bucket prefix, with have account number apended to the name | `string` | `"my-alexa-cert-bucket-"` | no |
| cloudfront\_name | CloudFront distribution name | `string` | `"my-alexa-cert-s3-origin"` | no |
| skill\_id | Alexa skill ID (retrieve this from the Alexa Developer Console) | `string` | n/a | yes |
| tags | Tags to apply to resources | `map(any)` | <pre>{<br>  "Environment": "Alexa-Certification"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| backend\_lambda\_arn | ARN of the backend Lambda function.  Required to enter in the Alexa Developer Console |
| cloudfront\_domain\_name | Domain name of the CloudFront distribution |
| s3\_bucket\_domain\_name | Domain name of the S3 Bucket |

<!--- END_TF_DOCS --->

## License

See  [License](https://github.com/markjamesross/alexa-cert/LICENSE)