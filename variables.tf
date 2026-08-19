# Variables

variable "sns_topic_arn" {
  description = "A list of ARNs (i.e. SNS Topic ARN) to notify on alerts"
  type        = list(string)
}

variable "alarm_name_prefix" {
  description = "Alarm name prefix"
  type        = string
  default     = ""
}

variable "ec2_instance_id" {
  description = "The instance ID of the EC2 instance that you want to monitor."
  type        = string
}

variable "devices" {
  description = "The instance ID of the EC2 instance that you want to monitor."
  type = list(object({
    path   = string
    device = string
    fstype = string
  }))
  default = []
}

variable "devices_windows" {
  description = "The instance ID of the EC2 instance that you want to monitor."
  type = list(object({
    instance = string
  }))
  default = []
}

variable "cpu_utilization_threshold" {
  description = "The maximum percentage of CPU utilization."
  type        = string
  default     = 90
}

variable "status_check_failed_threshold" {
  description = "The minimum failed Status"
  type        = string
  default     = 1
}

variable "ebs_io_balance_threshold" {
  description = "The minimum percentage of EBS IO Balance"
  type        = string
  default     = 20
}

variable "ebs_bytes_balance_threshold" {
  description = "The minimum EBS Bytes Balance."
  type        = string
  default     = 20
}

variable "cpu_credit_balance_threshold" {
  description = "The minimum CPU Credits."
  type        = string
  default     = 20
}

variable "memory_usage_threshold" {
  description = "The maximum percentage of Memory utilization."
  type        = string
  default     = 90
}

variable "swap_usage_threshold" {
  description = "The maximum percentage of Swap utilization."
  type        = string
  default     = 50
}

variable "disk-usage_threshold" {
  description = "The minimum amount of available storage space in Byte."
  type        = string
  default     = 90
}

variable "logical_disk_free_space_threshold" {
  description = "The minimum amount of available storage space in Byte."
  type        = string
  default     = 5
}

variable "cpu_utilization_too_high-alarm" {
  description = "Enable Alarm to metric: cpu_utilization_too_high"
  default     = true
  type        = bool
}

variable "cpu_utilization_too_high-comparison_operator" {
  description = "Comparison_operator to alarm"
  type        = string
  default     = "GreaterThanThreshold"
}

variable "cpu_utilization_too_high-datapoint" {
  description = "Datapoint check to alarm"
  type        = string
  default     = "1"
}

variable "cpu_utilization_too_high-period" {
  description = "Period check to alarm (in seconds)"
  type        = string
  default     = "600"
}

variable "cpu_utilization_too_high-priority" {
  description = "Priority of alarm"
  default     = "P3"
  type        = string
}

variable "status_check_failed-alarm" {
  description = "Enable Alarm to metric: status_check_failed"
  default     = true
  type        = bool
}

variable "status_check_failed-comparison_operator" {
  description = "Comparison_operator to alarm"
  type        = string
  default     = "GreaterThanOrEqualToThreshold"
}

variable "status_check_failed-datapoint" {
  description = "Datapoint check to alarm"
  type        = string
  default     = "1"
}

variable "status_check_failed-period" {
  description = "Period check to alarm (in seconds)"
  type        = string
  default     = "600"
}

variable "status_check_failed-priority" {
  description = "Priority of alarm"
  default     = "P3"
  type        = string
}

variable "ebs_io_balance_too_low-alarm" {
  description = "Enable Alarm to metric: ebs_io_balance_too_low"
  default     = true
  type        = bool
}

variable "ebs_io_balance_too_low-comparison_operator" {
  description = "Comparison_operator to alarm"
  type        = string
  default     = "LessThanThreshold"
}

variable "ebs_io_balance_too_low-datapoint" {
  description = "Datapoint check to alarm"
  type        = string
  default     = "1"
}

variable "ebs_io_balance_too_low-period" {
  description = "Period check to alarm (in seconds)"
  type        = string
  default     = "600"
}

variable "ebs_io_balance_too_low-priority" {
  description = "Priority of alarm"
  default     = "P3"
  type        = string
}

variable "ebs_bytes_balance_too_low-alarm" {
  description = "Enable Alarm to metric: ebs_bytes_balance_too_low"
  default     = true
  type        = bool
}

variable "ebs_bytes_balance_too_low-comparison_operator" {
  description = "Comparison_operator to alarm"
  type        = string
  default     = "LessThanThreshold"
}

variable "ebs_bytes_balance_too_low-datapoint" {
  description = "Datapoint check to alarm"
  type        = string
  default     = "1"
}

variable "ebs_bytes_balance_too_low-period" {
  description = "Period check to alarm (in seconds)"
  type        = string
  default     = "600"
}

variable "ebs_bytes_balance_too_low-priority" {
  description = "Priority of alarm"
  default     = "P3"
  type        = string
}

variable "cpu_credit_balance_too_low-alarm" {
  description = "Enable Alarm to metric: cpu_credit_balance_too_low"
  default     = true
  type        = bool
}

variable "cpu_credit_balance_too_low-comparison_operator" {
  description = "Comparison_operator to alarm"
  type        = string
  default     = "LessThanThreshold"
}

variable "cpu_credit_balance_too_low-datapoint" {
  description = "Datapoint check to alarm"
  type        = string
  default     = "1"
}

variable "cpu_credit_balance_too_low-period" {
  description = "Period check to alarm (in seconds)"
  type        = string
  default     = "600"
}

variable "cpu_credit_balance_too_low-priority" {
  description = "Priority of alarm"
  default     = "P3"
  type        = string
}

variable "memory_utilization_too_high_windows-alarm" {
  description = "Enable Alarm to metric: memory_utilization_too_high"
  default     = false
  type        = bool
}

variable "memory_utilization_too_high-alarm" {
  description = "Enable Alarm to metric: memory_utilization_too_high"
  default     = true
  type        = bool
}

variable "memory_utilization_too_high-comparison_operator" {
  description = "Comparison_operator to alarm"
  type        = string
  default     = "GreaterThanThreshold"
}

variable "memory_utilization_too_high-datapoint" {
  description = "Datapoint check to alarm"
  type        = string
  default     = "1"
}

variable "memory_utilization_too_high-period" {
  description = "Period check to alarm (in seconds)"
  type        = string
  default     = "600"
}

variable "memory_utilization_too_high-priority" {
  description = "Priority of alarm"
  default     = "P3"
  type        = string
}
variable "swap_utilization_too_high-alarm" {
  description = "Enable Alarm to metric: swap_utilization_too_high"
  default     = true
  type        = bool
}

variable "swap_utilization_too_high-comparison_operator" {
  description = "Comparison_operator to alarm"
  type        = string
  default     = "GreaterThanThreshold"
}

variable "swap_utilization_too_high-datapoint" {
  description = "Datapoint check to alarm"
  type        = string
  default     = "1"
}

variable "swap_utilization_too_high-period" {
  description = "Period check to alarm (in seconds)"
  type        = string
  default     = "600"
}

variable "swap_utilization_too_high-priority" {
  description = "Priority of alarm"
  default     = "P3"
  type        = string
}

variable "disk-utilization_too_high-alarm" {
  description = "Enable Alarm to metric: disk-utilization_too_high-alarm"
  default     = true
  type        = bool
}

variable "disk-utilization_too_high-comparison_operator" {
  description = "Comparison_operator to alarm"
  type        = string
  default     = "GreaterThanThreshold"
}

variable "disk-utilization_too_high-datapoint" {
  description = "Datapoint check to alarm"
  type        = string
  default     = "1"
}

variable "disk-utilization_too_high-period" {
  description = "Period check to alarm (in seconds)"
  type        = string
  default     = "600"
}

variable "disk-utilization_too_high-priority" {
  description = "Priority of alarm"
  default     = "P3"
  type        = string
}

variable "logical_disk_free_space-alarm" {
  description = "Enable Alarm to metric: logical_disk_free_space_alarm"
  default     = false
  type        = bool
}

variable "logical_disk_free_space-comparison_operator" {
  description = "Comparison_operator to alarm"
  type        = string
  default     = "LessThanThreshold"
}

variable "logical_disk_free_space-datapoint" {
  description = "Datapoint check to alarm"
  type        = string
  default     = "1"
}

variable "logical_disk_free_space-period" {
  description = "Period check to alarm (in seconds)"
  type        = string
  default     = "600"
}

variable "logical_disk_free_space-priority" {
  description = "Priority of alarm"
  default     = "P3"
  type        = string
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the all resources"
  type        = map(string)
  default     = {}
}
