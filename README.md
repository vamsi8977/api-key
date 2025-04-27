# Terraform AWS RHD API Keys

* Create, maintain, and secure APIs at any scale

## Additional Resources

- [Amazon API Key User Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-setup-api-key-with-console.html)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.96.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_api_key.api_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_api_key) | resource |
| [aws_api_gateway_usage_plan.usage_plan](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan) | resource |
| [aws_api_gateway_usage_plan_key.association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan_key) | resource |
| [aws_api_gateway_rest_api.api_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/api_gateway_rest_api) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_id"></a> [app\_id](#input\_app\_id) | A unique identifier for your application, used in provisioning profiles. | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region where resources will be created (e.g., us-east-1, us-west-2). | `string` | n/a | yes |
| <a name="input_burst_limit"></a> [burst\_limit](#input\_burst\_limit) | The API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity. | `number` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | The name of the environment where resources will be deployed (e.g., dev, staging, prod). | `string` | n/a | yes |
| <a name="input_quota_limit"></a> [quota\_limit](#input\_quota\_limit) | Maximum number of requests that can be made in a given time period. | `number` | n/a | yes |
| <a name="input_quota_period"></a> [quota\_period](#input\_quota\_period) | Time period in which the limit applies. Valid values are "DAY", "WEEK" or "MONTH". | `string` | n/a | yes |
| <a name="input_rate_limit"></a> [rate\_limit](#input\_rate\_limit) | The API request steady-state rate limit. This is the maximum number of requests that can be made per second over a longer time period, such as a minute or an hour. | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_key_name"></a> [api\_key\_name](#output\_api\_key\_name) | value of the api key name |
| <a name="output_burst_limit"></a> [burst\_limit](#output\_burst\_limit) | The API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity |
| <a name="output_quota_limit"></a> [quota\_limit](#output\_quota\_limit) | Maximum number of requests that can be made in a given time period |
| <a name="output_quota_period"></a> [quota\_period](#output\_quota\_period) | Time period in which the limit applies. Valid values are "DAY", "WEEK" or "MONTH" |
| <a name="output_rate_limit"></a> [rate\_limit](#output\_rate\_limit) | The API request steady-state rate limit |
| <a name="output_usage_plan_name"></a> [usage\_plan\_name](#output\_usage\_plan\_name) | value of the usage plan name |
<!-- END_TF_DOCS -->
