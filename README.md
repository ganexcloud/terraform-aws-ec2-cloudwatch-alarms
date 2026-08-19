# terraform-aws-ec2-cloudwatch-alarms

Terraform module that creates a configurable set of CloudWatch metric alarms
for an EC2 instance, including CPU, status check, EBS, memory, swap, disk and
Windows logical-disk metrics.

## Compatibility

This module requires Terraform 1.6.0 or later and supports AWS provider
versions from 5.40.0 up to, but not including, 7.0.0.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.40.0, < 7.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.40.0, < 7.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.cpu_credit_balance_too_low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.cpu_utilization_too_high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.disk-utilization_too_high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.ebs_bytes_balance_too_low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.ebs_io_balance_too_low](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.logical_disk_free_space](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.memory_utilization_too_high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.memory_utilization_too_high_windows](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.status_check_failed](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.swap_utilization_too_high](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_iam_account_alias.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_account_alias) | data source |
| [aws_instance.ec2_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/instance) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alarm_name_prefix"></a> [alarm\_name\_prefix](#input\_alarm\_name\_prefix) | Alarm name prefix | `string` | `""` | no |
| <a name="input_cpu_credit_balance_threshold"></a> [cpu\_credit\_balance\_threshold](#input\_cpu\_credit\_balance\_threshold) | The minimum CPU Credits. | `string` | `20` | no |
| <a name="input_cpu_credit_balance_too_low-alarm"></a> [cpu\_credit\_balance\_too\_low-alarm](#input\_cpu\_credit\_balance\_too\_low-alarm) | Enable Alarm to metric: cpu\_credit\_balance\_too\_low | `bool` | `true` | no |
| <a name="input_cpu_credit_balance_too_low-comparison_operator"></a> [cpu\_credit\_balance\_too\_low-comparison\_operator](#input\_cpu\_credit\_balance\_too\_low-comparison\_operator) | Comparison\_operator to alarm | `string` | `"LessThanThreshold"` | no |
| <a name="input_cpu_credit_balance_too_low-datapoint"></a> [cpu\_credit\_balance\_too\_low-datapoint](#input\_cpu\_credit\_balance\_too\_low-datapoint) | Datapoint check to alarm | `string` | `"1"` | no |
| <a name="input_cpu_credit_balance_too_low-period"></a> [cpu\_credit\_balance\_too\_low-period](#input\_cpu\_credit\_balance\_too\_low-period) | Period check to alarm (in seconds) | `string` | `"600"` | no |
| <a name="input_cpu_credit_balance_too_low-priority"></a> [cpu\_credit\_balance\_too\_low-priority](#input\_cpu\_credit\_balance\_too\_low-priority) | Priority of alarm | `string` | `"P3"` | no |
| <a name="input_cpu_utilization_threshold"></a> [cpu\_utilization\_threshold](#input\_cpu\_utilization\_threshold) | The maximum percentage of CPU utilization. | `string` | `90` | no |
| <a name="input_cpu_utilization_too_high-alarm"></a> [cpu\_utilization\_too\_high-alarm](#input\_cpu\_utilization\_too\_high-alarm) | Enable Alarm to metric: cpu\_utilization\_too\_high | `bool` | `true` | no |
| <a name="input_cpu_utilization_too_high-comparison_operator"></a> [cpu\_utilization\_too\_high-comparison\_operator](#input\_cpu\_utilization\_too\_high-comparison\_operator) | Comparison\_operator to alarm | `string` | `"GreaterThanThreshold"` | no |
| <a name="input_cpu_utilization_too_high-datapoint"></a> [cpu\_utilization\_too\_high-datapoint](#input\_cpu\_utilization\_too\_high-datapoint) | Datapoint check to alarm | `string` | `"1"` | no |
| <a name="input_cpu_utilization_too_high-period"></a> [cpu\_utilization\_too\_high-period](#input\_cpu\_utilization\_too\_high-period) | Period check to alarm (in seconds) | `string` | `"600"` | no |
| <a name="input_cpu_utilization_too_high-priority"></a> [cpu\_utilization\_too\_high-priority](#input\_cpu\_utilization\_too\_high-priority) | Priority of alarm | `string` | `"P3"` | no |
| <a name="input_devices"></a> [devices](#input\_devices) | The instance ID of the EC2 instance that you want to monitor. | <pre>list(object({<br/>    path   = string<br/>    device = string<br/>    fstype = string<br/>  }))</pre> | `[]` | no |
| <a name="input_devices_windows"></a> [devices\_windows](#input\_devices\_windows) | The instance ID of the EC2 instance that you want to monitor. | <pre>list(object({<br/>    instance = string<br/>  }))</pre> | `[]` | no |
| <a name="input_disk-usage_threshold"></a> [disk-usage\_threshold](#input\_disk-usage\_threshold) | The minimum amount of available storage space in Byte. | `string` | `90` | no |
| <a name="input_disk-utilization_too_high-alarm"></a> [disk-utilization\_too\_high-alarm](#input\_disk-utilization\_too\_high-alarm) | Enable Alarm to metric: disk-utilization\_too\_high-alarm | `bool` | `true` | no |
| <a name="input_disk-utilization_too_high-comparison_operator"></a> [disk-utilization\_too\_high-comparison\_operator](#input\_disk-utilization\_too\_high-comparison\_operator) | Comparison\_operator to alarm | `string` | `"GreaterThanThreshold"` | no |
| <a name="input_disk-utilization_too_high-datapoint"></a> [disk-utilization\_too\_high-datapoint](#input\_disk-utilization\_too\_high-datapoint) | Datapoint check to alarm | `string` | `"1"` | no |
| <a name="input_disk-utilization_too_high-period"></a> [disk-utilization\_too\_high-period](#input\_disk-utilization\_too\_high-period) | Period check to alarm (in seconds) | `string` | `"600"` | no |
| <a name="input_disk-utilization_too_high-priority"></a> [disk-utilization\_too\_high-priority](#input\_disk-utilization\_too\_high-priority) | Priority of alarm | `string` | `"P3"` | no |
| <a name="input_ebs_bytes_balance_threshold"></a> [ebs\_bytes\_balance\_threshold](#input\_ebs\_bytes\_balance\_threshold) | The minimum EBS Bytes Balance. | `string` | `20` | no |
| <a name="input_ebs_bytes_balance_too_low-alarm"></a> [ebs\_bytes\_balance\_too\_low-alarm](#input\_ebs\_bytes\_balance\_too\_low-alarm) | Enable Alarm to metric: ebs\_bytes\_balance\_too\_low | `bool` | `true` | no |
| <a name="input_ebs_bytes_balance_too_low-comparison_operator"></a> [ebs\_bytes\_balance\_too\_low-comparison\_operator](#input\_ebs\_bytes\_balance\_too\_low-comparison\_operator) | Comparison\_operator to alarm | `string` | `"LessThanThreshold"` | no |
| <a name="input_ebs_bytes_balance_too_low-datapoint"></a> [ebs\_bytes\_balance\_too\_low-datapoint](#input\_ebs\_bytes\_balance\_too\_low-datapoint) | Datapoint check to alarm | `string` | `"1"` | no |
| <a name="input_ebs_bytes_balance_too_low-period"></a> [ebs\_bytes\_balance\_too\_low-period](#input\_ebs\_bytes\_balance\_too\_low-period) | Period check to alarm (in seconds) | `string` | `"600"` | no |
| <a name="input_ebs_bytes_balance_too_low-priority"></a> [ebs\_bytes\_balance\_too\_low-priority](#input\_ebs\_bytes\_balance\_too\_low-priority) | Priority of alarm | `string` | `"P3"` | no |
| <a name="input_ebs_io_balance_threshold"></a> [ebs\_io\_balance\_threshold](#input\_ebs\_io\_balance\_threshold) | The minimum percentage of EBS IO Balance | `string` | `20` | no |
| <a name="input_ebs_io_balance_too_low-alarm"></a> [ebs\_io\_balance\_too\_low-alarm](#input\_ebs\_io\_balance\_too\_low-alarm) | Enable Alarm to metric: ebs\_io\_balance\_too\_low | `bool` | `true` | no |
| <a name="input_ebs_io_balance_too_low-comparison_operator"></a> [ebs\_io\_balance\_too\_low-comparison\_operator](#input\_ebs\_io\_balance\_too\_low-comparison\_operator) | Comparison\_operator to alarm | `string` | `"LessThanThreshold"` | no |
| <a name="input_ebs_io_balance_too_low-datapoint"></a> [ebs\_io\_balance\_too\_low-datapoint](#input\_ebs\_io\_balance\_too\_low-datapoint) | Datapoint check to alarm | `string` | `"1"` | no |
| <a name="input_ebs_io_balance_too_low-period"></a> [ebs\_io\_balance\_too\_low-period](#input\_ebs\_io\_balance\_too\_low-period) | Period check to alarm (in seconds) | `string` | `"600"` | no |
| <a name="input_ebs_io_balance_too_low-priority"></a> [ebs\_io\_balance\_too\_low-priority](#input\_ebs\_io\_balance\_too\_low-priority) | Priority of alarm | `string` | `"P3"` | no |
| <a name="input_ec2_instance_id"></a> [ec2\_instance\_id](#input\_ec2\_instance\_id) | The instance ID of the EC2 instance that you want to monitor. | `string` | n/a | yes |
| <a name="input_logical_disk_free_space-alarm"></a> [logical\_disk\_free\_space-alarm](#input\_logical\_disk\_free\_space-alarm) | Enable Alarm to metric: logical\_disk\_free\_space\_alarm | `bool` | `false` | no |
| <a name="input_logical_disk_free_space-comparison_operator"></a> [logical\_disk\_free\_space-comparison\_operator](#input\_logical\_disk\_free\_space-comparison\_operator) | Comparison\_operator to alarm | `string` | `"LessThanThreshold"` | no |
| <a name="input_logical_disk_free_space-datapoint"></a> [logical\_disk\_free\_space-datapoint](#input\_logical\_disk\_free\_space-datapoint) | Datapoint check to alarm | `string` | `"1"` | no |
| <a name="input_logical_disk_free_space-period"></a> [logical\_disk\_free\_space-period](#input\_logical\_disk\_free\_space-period) | Period check to alarm (in seconds) | `string` | `"600"` | no |
| <a name="input_logical_disk_free_space-priority"></a> [logical\_disk\_free\_space-priority](#input\_logical\_disk\_free\_space-priority) | Priority of alarm | `string` | `"P3"` | no |
| <a name="input_logical_disk_free_space_threshold"></a> [logical\_disk\_free\_space\_threshold](#input\_logical\_disk\_free\_space\_threshold) | The minimum amount of available storage space in Byte. | `string` | `5` | no |
| <a name="input_memory_usage_threshold"></a> [memory\_usage\_threshold](#input\_memory\_usage\_threshold) | The maximum percentage of Memory utilization. | `string` | `90` | no |
| <a name="input_memory_utilization_too_high-alarm"></a> [memory\_utilization\_too\_high-alarm](#input\_memory\_utilization\_too\_high-alarm) | Enable Alarm to metric: memory\_utilization\_too\_high | `bool` | `true` | no |
| <a name="input_memory_utilization_too_high-comparison_operator"></a> [memory\_utilization\_too\_high-comparison\_operator](#input\_memory\_utilization\_too\_high-comparison\_operator) | Comparison\_operator to alarm | `string` | `"GreaterThanThreshold"` | no |
| <a name="input_memory_utilization_too_high-datapoint"></a> [memory\_utilization\_too\_high-datapoint](#input\_memory\_utilization\_too\_high-datapoint) | Datapoint check to alarm | `string` | `"1"` | no |
| <a name="input_memory_utilization_too_high-period"></a> [memory\_utilization\_too\_high-period](#input\_memory\_utilization\_too\_high-period) | Period check to alarm (in seconds) | `string` | `"600"` | no |
| <a name="input_memory_utilization_too_high-priority"></a> [memory\_utilization\_too\_high-priority](#input\_memory\_utilization\_too\_high-priority) | Priority of alarm | `string` | `"P3"` | no |
| <a name="input_memory_utilization_too_high_windows-alarm"></a> [memory\_utilization\_too\_high\_windows-alarm](#input\_memory\_utilization\_too\_high\_windows-alarm) | Enable Alarm to metric: memory\_utilization\_too\_high | `bool` | `false` | no |
| <a name="input_sns_topic_arn"></a> [sns\_topic\_arn](#input\_sns\_topic\_arn) | A list of ARNs (i.e. SNS Topic ARN) to notify on alerts | `list(string)` | n/a | yes |
| <a name="input_status_check_failed-alarm"></a> [status\_check\_failed-alarm](#input\_status\_check\_failed-alarm) | Enable Alarm to metric: status\_check\_failed | `bool` | `true` | no |
| <a name="input_status_check_failed-comparison_operator"></a> [status\_check\_failed-comparison\_operator](#input\_status\_check\_failed-comparison\_operator) | Comparison\_operator to alarm | `string` | `"GreaterThanOrEqualToThreshold"` | no |
| <a name="input_status_check_failed-datapoint"></a> [status\_check\_failed-datapoint](#input\_status\_check\_failed-datapoint) | Datapoint check to alarm | `string` | `"1"` | no |
| <a name="input_status_check_failed-period"></a> [status\_check\_failed-period](#input\_status\_check\_failed-period) | Period check to alarm (in seconds) | `string` | `"600"` | no |
| <a name="input_status_check_failed-priority"></a> [status\_check\_failed-priority](#input\_status\_check\_failed-priority) | Priority of alarm | `string` | `"P3"` | no |
| <a name="input_status_check_failed_threshold"></a> [status\_check\_failed\_threshold](#input\_status\_check\_failed\_threshold) | The minimum failed Status | `string` | `1` | no |
| <a name="input_swap_usage_threshold"></a> [swap\_usage\_threshold](#input\_swap\_usage\_threshold) | The maximum percentage of Swap utilization. | `string` | `50` | no |
| <a name="input_swap_utilization_too_high-alarm"></a> [swap\_utilization\_too\_high-alarm](#input\_swap\_utilization\_too\_high-alarm) | Enable Alarm to metric: swap\_utilization\_too\_high | `bool` | `true` | no |
| <a name="input_swap_utilization_too_high-comparison_operator"></a> [swap\_utilization\_too\_high-comparison\_operator](#input\_swap\_utilization\_too\_high-comparison\_operator) | Comparison\_operator to alarm | `string` | `"GreaterThanThreshold"` | no |
| <a name="input_swap_utilization_too_high-datapoint"></a> [swap\_utilization\_too\_high-datapoint](#input\_swap\_utilization\_too\_high-datapoint) | Datapoint check to alarm | `string` | `"1"` | no |
| <a name="input_swap_utilization_too_high-period"></a> [swap\_utilization\_too\_high-period](#input\_swap\_utilization\_too\_high-period) | Period check to alarm (in seconds) | `string` | `"600"` | no |
| <a name="input_swap_utilization_too_high-priority"></a> [swap\_utilization\_too\_high-priority](#input\_swap\_utilization\_too\_high-priority) | Priority of alarm | `string` | `"P3"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A map of tags to assign to the all resources | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Example

See [`examples/complete`](examples/complete).
