module "this" {
  source = "../../"

  ec2_instance_id = var.ec2_instance_id
  sns_topic_arn   = var.sns_topic_arn
  devices = [
    {
      device = "nvme0n1p1"
      path   = "/"
      fstype = "xfs"
    },
    {
      device = "nvme1n1"
      path   = "/srv"
      fstype = "xfs"
    },
  ]
  devices_windows = [
    { instance = "C:" },
    { instance = "D:" },
  ]
  tags = {
    Example = "complete"
  }
}
