variable "region" {
  description = "AWS region used by the example."
  type        = string
  default     = "us-east-1"
}

variable "ec2_instance_id" {
  description = "Existing EC2 instance to monitor."
  type        = string
}

variable "sns_topic_arn" {
  description = "SNS topic ARNs for alarm actions."
  type        = list(string)
}
