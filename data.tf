data "aws_iam_account_alias" "current" {}

data "aws_instance" "ec2_instance" {
  instance_id = var.ec2_instance_id
}