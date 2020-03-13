resource "aws_sqs_queue" "terraform_queue" {
  name                              = var.name
  kms_master_key_id                 = var.kms_master_key_id
  kms_data_key_reuse_period_seconds = var.kms_data_key_reuse_period_seconds
}
