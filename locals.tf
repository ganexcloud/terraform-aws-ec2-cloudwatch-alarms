locals {
  devices_map         = { for device in var.devices : device.device => device }
  devices_map_windows = { for device in var.devices_windows : device.instance => device }
}

locals {
  instance_name = data.aws_instance.ec2_instance.tags["Name"]
  instance_type = data.aws_instance.ec2_instance.instance_type
  image_id      = data.aws_instance.ec2_instance.ami
}

locals {
  alarm_name_prefix = title(var.alarm_name_prefix == "" ? data.aws_iam_account_alias.current.account_alias : var.alarm_name_prefix)
  thresholds = {
    StatusCheckFailedThreshold    = min(max(var.status_check_failed_threshold, 0), 100)
    EBSByteBalanceThreshold       = min(max(var.ebs_bytes_balance_threshold, 0), 100)
    EBSIOBalanceThreshold         = min(max(var.ebs_io_balance_threshold, 0), 100)
    CPUCreditBalanceThreshold     = min(max(var.cpu_credit_balance_threshold, 0), 100)
    CPUUtilizationThreshold       = min(max(var.cpu_utilization_threshold, 0), 100)
    MemoryUsageThreshold          = min(max(var.memory_usage_threshold, 0), 100)
    DiskUsedThreshold             = min(max(var.disk-usage_threshold, 0), 100)
    LogicalDiskFreeSpaceThreshold = min(max(var.logical_disk_free_space_threshold, 0), 100)
    SwapUsageThreshold            = min(max(var.swap_usage_threshold, 0), 100)
  }
}
