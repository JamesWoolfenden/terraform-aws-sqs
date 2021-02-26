resource "aws_sns_topic" "examplea" {
  kms_master_key_id = "alias/aws/sns"
}
