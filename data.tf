data "aws_api_gateway_rest_api" "api_gateway" {
  name = "${var.aws_region}-${var.environment}-ApiGw"
}
