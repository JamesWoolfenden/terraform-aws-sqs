resource "aws_sqs_queue" "examplea" {
  # checkov:skip=CKV2_AWS_73: kms_master_key_id is variable-driven; consumers supply a CMK
  name                              = var.name
  kms_master_key_id                 = var.kms_master_key_id
  kms_data_key_reuse_period_seconds = var.kms_data_key_reuse_period_seconds
}
