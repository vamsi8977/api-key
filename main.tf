resource "aws_api_gateway_api_key" "api_key" {
  name        = "${var.aws_region}-${var.environment}-apikey"
  description = "API Key for ${var.aws_region}-${var.environment}-ApiGw"
  enabled     = true
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_api_gateway_usage_plan" "usage_plan" {
  name        = "${var.aws_region}-${var.environment}-usageplan"
  description = "Usage Plan for ${var.aws_region}-${var.environment}-ApiGw"

  api_stages {
    api_id = data.aws_api_gateway_rest_api.api_gateway.id
    stage  = "${var.aws_region}-${var.environment}-ApiGw"
  }

  quota_settings {
    limit  = var.quota_limit
    period = var.quota_period
  }

  throttle_settings {
    burst_limit = var.burst_limit
    rate_limit  = var.rate_limit
  }
}

resource "aws_api_gateway_usage_plan_key" "association" {
  key_id        = aws_api_gateway_api_key.api_key.id
  key_type      = "API_KEY"
  usage_plan_id = aws_api_gateway_usage_plan.usage_plan.id
}
