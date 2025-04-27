# ======================================================
# AWS
# ======================================================

variable "aws_region" {
  description = "The AWS region where resources will be created (e.g., us-east-1, us-west-2)."
  type        = string
}

# ======================================================
# Tags
# ======================================================

variable "app_id" {
  description = "A unique identifier for your application, used in provisioning profiles."
  type        = string
}

variable "environment" {
  description = "The name of the environment where resources will be deployed (e.g., dev, staging, prod)."
  type        = string
}

# ======================================================
# API Keys && Usage Plan
# ======================================================

variable "rate_limit" {
  description = "The API request steady-state rate limit. This is the maximum number of requests that can be made per second over a longer time period, such as a minute or an hour."
  type        = number
}

variable "burst_limit" {
  description = "The API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity."
  type        = number
}

variable "quota_limit" {
  description = "Maximum number of requests that can be made in a given time period."
  type        = number
}

variable "quota_period" {
  description = "Time period in which the limit applies. Valid values are \"DAY\", \"WEEK\" or \"MONTH\"."
  type        = string
}
