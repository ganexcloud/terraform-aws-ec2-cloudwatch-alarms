resource "aws_cloudwatch_metric_alarm" "status_check_failed" {
  count               = var.status_check_failed-alarm ? 1 : 0
  alarm_name          = "[${title(local.alarm_name_prefix)}] ec2-${local.instance_name}-status_check_failed"
  comparison_operator = var.status_check_failed-comparison_operator
  evaluation_periods  = var.status_check_failed-datapoint
  metric_name         = "StatusCheckFailed"
  namespace           = "AWS/EC2"
  period              = var.status_check_failed-period
  statistic           = "Average"
  threshold           = local.thresholds["StatusCheckFailedThreshold"]
  alarm_description   = "Status Check EC2 instance Failed under last ${var.status_check_failed-period} minutes too. (${var.status_check_failed-priority})"
  alarm_actions       = var.sns_topic_arn
  ok_actions          = var.sns_topic_arn
  tags                = var.tags

  dimensions = {
    InstanceId = var.ec2_instance_id
  }
}

resource "aws_cloudwatch_metric_alarm" "ebs_bytes_balance_too_low" {
  count               = var.ebs_bytes_balance_too_low-alarm ? 1 : 0
  alarm_name          = "[${title(local.alarm_name_prefix)}] ec2-${local.instance_name}-ebs_bytes_balance_too_low"
  comparison_operator = var.ebs_bytes_balance_too_low-comparison_operator
  evaluation_periods  = var.ebs_bytes_balance_too_low-datapoint
  metric_name         = "EBSByteBalance%"
  namespace           = "AWS/EC2"
  period              = var.ebs_bytes_balance_too_low-period
  statistic           = "Average"
  threshold           = local.thresholds["EBSByteBalanceThreshold"]
  alarm_description   = "Average EC2 instance EBS Byte Balance under last ${var.ebs_bytes_balance_too_low-period} minutes too high. (${var.ebs_bytes_balance_too_low-priority})"
  alarm_actions       = var.sns_topic_arn
  ok_actions          = var.sns_topic_arn
  tags                = var.tags

  dimensions = {
    InstanceId = var.ec2_instance_id
  }
}

resource "aws_cloudwatch_metric_alarm" "ebs_io_balance_too_low" {
  count               = var.ebs_io_balance_too_low-alarm ? 1 : 0
  alarm_name          = "[${title(local.alarm_name_prefix)}] ec2-${local.instance_name}-ebs_io_balance_too_low"
  comparison_operator = var.ebs_io_balance_too_low-comparison_operator
  evaluation_periods  = var.ebs_io_balance_too_low-datapoint
  metric_name         = "EBSIOBalance%"
  namespace           = "AWS/EC2"
  period              = var.ebs_io_balance_too_low-period
  statistic           = "Average"
  threshold           = local.thresholds["EBSIOBalanceThreshold"]
  alarm_description   = "Average EC2 instance EBS IO Balance under last ${var.ebs_io_balance_too_low-period} minutes too high. (${var.ebs_io_balance_too_low-priority})"
  alarm_actions       = var.sns_topic_arn
  ok_actions          = var.sns_topic_arn
  tags                = var.tags

  dimensions = {
    InstanceId = var.ec2_instance_id
  }
}

resource "aws_cloudwatch_metric_alarm" "cpu_credit_balance_too_low" {
  count               = var.cpu_credit_balance_too_low-alarm ? 1 : 0
  alarm_name          = "[${title(local.alarm_name_prefix)}] ec2-${local.instance_name}-cpu_credit_balance_too_low"
  comparison_operator = var.cpu_credit_balance_too_low-comparison_operator
  evaluation_periods  = var.cpu_credit_balance_too_low-datapoint
  metric_name         = "CPUCreditBalance"
  namespace           = "AWS/EC2"
  period              = var.cpu_credit_balance_too_low-period
  statistic           = "Average"
  threshold           = local.thresholds["CPUCreditBalanceThreshold"]
  alarm_description   = "Average EC2 instance CPU Credits Balance under last ${var.cpu_credit_balance_too_low-period} minutes too high. (${var.cpu_credit_balance_too_low-priority})"
  alarm_actions       = var.sns_topic_arn
  ok_actions          = var.sns_topic_arn
  tags                = var.tags

  dimensions = {
    InstanceId = var.ec2_instance_id
  }
}

resource "aws_cloudwatch_metric_alarm" "cpu_utilization_too_high" {
  count               = var.cpu_utilization_too_high-alarm ? 1 : 0
  alarm_name          = "[${title(local.alarm_name_prefix)}] ec2-${local.instance_name}-cpu-utilization-too-high"
  comparison_operator = var.cpu_utilization_too_high-comparison_operator
  evaluation_periods  = var.cpu_utilization_too_high-datapoint
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = var.cpu_utilization_too_high-period
  statistic           = "Average"
  threshold           = local.thresholds["CPUUtilizationThreshold"]
  alarm_description   = "Average EC2 instance CPU utilization over last ${var.cpu_utilization_too_high-period} minutes too high. (${var.cpu_utilization_too_high-priority})"
  alarm_actions       = var.sns_topic_arn
  ok_actions          = var.sns_topic_arn
  tags                = var.tags

  dimensions = {
    InstanceId = var.ec2_instance_id
  }
}

resource "aws_cloudwatch_metric_alarm" "memory_utilization_too_high" {
  count               = var.memory_utilization_too_high-alarm ? 1 : 0
  alarm_name          = "[${title(local.alarm_name_prefix)}] ec2-${local.instance_name}-memory-usage-percent-too-high"
  comparison_operator = var.memory_utilization_too_high-comparison_operator
  evaluation_periods  = var.memory_utilization_too_high-datapoint
  metric_name         = "mem_used_percent"
  namespace           = "CWAgent"
  period              = var.memory_utilization_too_high-period
  statistic           = "Average"
  threshold           = local.thresholds["MemoryUsageThreshold"]
  alarm_description   = "Average EC2 instance memory usage over last ${var.memory_utilization_too_high-period} minutes too high, expect a significant performance drop soon. (${var.memory_utilization_too_high-priority})"
  alarm_actions       = var.sns_topic_arn
  ok_actions          = var.sns_topic_arn
  tags                = var.tags

  dimensions = {
    InstanceId   = var.ec2_instance_id
    ImageId      = local.image_id
    InstanceType = local.instance_type
  }
}

resource "aws_cloudwatch_metric_alarm" "memory_utilization_too_high_windows" {
  count               = var.memory_utilization_too_high_windows-alarm ? 1 : 0
  alarm_name          = "[${title(local.alarm_name_prefix)}] ec2-${local.instance_name}-memory-usage-percent-too-high"
  comparison_operator = var.memory_utilization_too_high-comparison_operator
  evaluation_periods  = var.memory_utilization_too_high-datapoint
  metric_name         = "Memory % Committed Bytes In Use"
  namespace           = "CWAgent"
  period              = var.memory_utilization_too_high-period
  statistic           = "Average"
  threshold           = local.thresholds["MemoryUsageThreshold"]
  alarm_description   = "Average EC2 instance memory usage over last ${var.memory_utilization_too_high-period} minutes too high, expect a significant performance drop soon. (${var.memory_utilization_too_high-priority})"
  alarm_actions       = var.sns_topic_arn
  ok_actions          = var.sns_topic_arn
  tags                = var.tags
  datapoints_to_alarm = 1

  dimensions = {
    InstanceId   = var.ec2_instance_id
    ImageId      = local.image_id
    InstanceType = local.instance_type
    objectname   = "Memory"
  }
}

resource "aws_cloudwatch_metric_alarm" "disk-utilization_too_high" {
  #for_each = { for i in range(length(var.path)) : var.path[i] => var.device[i] }
  for_each = var.disk-utilization_too_high-alarm ? local.devices_map : {}

  alarm_name          = "[${title(local.alarm_name_prefix)}] ec2-${local.instance_name}-disk-usage-space-threshold-${lookup(each.value, "path")}"
  comparison_operator = var.disk-utilization_too_high-comparison_operator
  evaluation_periods  = var.disk-utilization_too_high-datapoint
  metric_name         = "disk_used_percent"
  namespace           = "CWAgent"
  period              = var.disk-utilization_too_high-period
  statistic           = "Average"
  threshold           = local.thresholds["DiskUsedThreshold"]
  alarm_description   = "Average EC2 instance Disk Usage over last ${var.disk-utilization_too_high-period} minutes too high, expect a significant performance drop soon. (${var.disk-utilization_too_high-priority})"
  alarm_actions       = var.sns_topic_arn
  ok_actions          = var.sns_topic_arn
  tags                = var.tags

  dimensions = {
    InstanceId   = var.ec2_instance_id
    path         = lookup(each.value, "path")
    ImageId      = local.image_id
    device       = lookup(each.value, "device")
    InstanceType = local.instance_type
    fstype       = lookup(each.value, "fstype")
  }
}

resource "aws_cloudwatch_metric_alarm" "logical_disk_free_space" {
  #for_each = { for i in range(length(var.path)) : var.path[i] => var.device[i] }
  for_each = var.logical_disk_free_space-alarm ? local.devices_map_windows : {}

  alarm_name          = "[${title(local.alarm_name_prefix)}] ec2-${local.instance_name}-logical-disk-free-space-threshold-${lookup(each.value, "instance")}"
  comparison_operator = var.logical_disk_free_space-comparison_operator
  evaluation_periods  = var.logical_disk_free_space-datapoint
  metric_name         = "LogicalDisk % Free Space"
  namespace           = "CWAgent"
  period              = var.logical_disk_free_space-period
  statistic           = "Average"
  threshold           = local.thresholds["LogicalDiskFreeSpaceThreshold"]
  alarm_description   = "Average EC2 instance Disk Usage over last ${var.logical_disk_free_space-period} minutes too high, expect a significant performance drop soon. (${var.logical_disk_free_space-priority})"
  alarm_actions       = var.sns_topic_arn
  ok_actions          = var.sns_topic_arn
  tags                = var.tags
  datapoints_to_alarm = 1

  dimensions = {
    InstanceId   = var.ec2_instance_id
    ImageId      = local.image_id
    InstanceType = local.instance_type
    instance     = lookup(each.value, "instance")
    objectname   = "LogicalDisk"
  }
}

resource "aws_cloudwatch_metric_alarm" "swap_utilization_too_high" {
  count               = var.swap_utilization_too_high-alarm ? 1 : 0
  alarm_name          = "[${title(local.alarm_name_prefix)}] ec2-${local.instance_name}-swap-usage-too-high"
  comparison_operator = var.swap_utilization_too_high-comparison_operator
  evaluation_periods  = var.swap_utilization_too_high-datapoint
  metric_name         = "swap_used_percent"
  namespace           = "CWAgent"
  period              = var.swap_utilization_too_high-period
  statistic           = "Average"
  threshold           = local.thresholds["SwapUsageThreshold"]
  alarm_description   = "Average EC2 instance Swap Usage over last ${var.swap_utilization_too_high-period} minutes too high, expect a significant performance drop soon. (${var.swap_utilization_too_high-priority})"
  alarm_actions       = var.sns_topic_arn
  ok_actions          = var.sns_topic_arn
  tags                = var.tags

  dimensions = {
    InstanceId   = var.ec2_instance_id
    ImageId      = local.image_id
    InstanceType = local.instance_type
  }
}