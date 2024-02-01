module "cloudwatch-alarms-ec2_example" {
  source          = "git::https://gitlab.com/ganex-cloud/terraform/terraform-aws-ec2-cloudwatch-alarms.git"
  ec2_instance_id = module.ec2_instance-example.id[0]
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
  sns_topic_arn = [data.terraform_remote_state.infra.outputs.sns_devops-this_sns_topic_arn]
}