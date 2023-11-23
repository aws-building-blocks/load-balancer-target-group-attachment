variable "AWS_ACCESS_KEY_ID" {
  description = "AWS Access Key"
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret Key"
}

variable "AWS_SESSION_TOKEN" {
  type        = string
  default     = null
  description = "AWS Session Token"
}

variable "AWS_REGION" {
  description = "AWS Region"
}

variable "target_group_arn" {
  type        = string
  description = "(Required) The ARN of the target group with which to register targets"
}

variable "target_id" {
  type        = string
  description = "(Required) The ID of the target. This is the Instance ID for an instance, or the container ID for an ECS container. If the target type is ip, specify an IP address. If the target type is lambda, specify the arn of lambda. If the target type is alb, specify the arn of alb."
}

variable "port" {
  type        = number
  default     = null
  description = "(Optional) The port on which targets receive traffic."
}

variable "availability_zone" {
  type        = string
  default     = null
  description = "(Optional) The Availability Zone where the IP address of the target is to be registered. If the private ip address is outside of the VPC scope, this value must be set to 'all'."
}
