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

variable "devices_linux" {
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
  default     = 90
}

variable "cpu_utilization_too_high-alarm" {
  description = "Enable Alarm to metric: cpu_utilization_too_high"
  default     = true
  type        = bool
}

variable "cpu_utilization_too_high-comparison_operator" {
  description = "Comparison_operator to alarm"
  default     = "GreaterThanThreshold"
}

variable "cpu_utilization_too_high-datapoint" {
  description = "Datapoint check to alarm"
  default     = "1"
}

variable "cpu_utilization_too_high-period" {
  description = "Period check to alarm (in seconds)"
  default     = "600"
}

variable "cpu_utilization_too_high-priority" {
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
  default     = "GreaterThanThreshold"
}

variable "memory_utilization_too_high-datapoint" {
  description = "Datapoint check to alarm"
  default     = "1"
}

variable "memory_utilization_too_high-period" {
  description = "Period check to alarm (in seconds)"
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
  default     = "GreaterThanThreshold"
}

variable "swap_utilization_too_high-datapoint" {
  description = "Datapoint check to alarm"
  default     = "1"
}

variable "swap_utilization_too_high-period" {
  description = "Period check to alarm (in seconds)"
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
  default     = "GreaterThanThreshold"
}

variable "disk-utilization_too_high-datapoint" {
  description = "Datapoint check to alarm"
  default     = "1"
}

variable "disk-utilization_too_high-period" {
  description = "Period check to alarm (in seconds)"
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
  default     = "GreaterThanThreshold"
}

variable "logical_disk_free_space-datapoint" {
  description = "Datapoint check to alarm"
  default     = "1"
}

variable "logical_disk_free_space-period" {
  description = "Period check to alarm (in seconds)"
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