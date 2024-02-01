locals {
  devices_map = { for device in var.devices : device.device => device }
}

locals {
  instance_name = data.aws_instance.ec2_instance.tags["Name"]
  instance_type = data.aws_instance.ec2_instance.instance_type
  image_id      = data.aws_instance.ec2_instance.ami
}

locals {
  alarm_name_prefix = title(var.alarm_name_prefix == "" ? data.aws_iam_account_alias.current.account_alias : var.alarm_name_prefix)
  thresholds = {
    CPUUtilizationThreshold = min(max(var.cpu_utilization_threshold, 0), 100)
    MemoryUsageThreshold    = min(max(var.memory_usage_threshold, 0), 100)
    DiskUsedThreshold       = min(max(var.disk-usage_threshold, 0), 100)
    SwapUsageThreshold      = min(max(var.swap_usage_threshold, 0), 100)
  }
}