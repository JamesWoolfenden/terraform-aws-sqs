resource "aws_sqs_queue_policy" "examplea" {
  # checkov:skip=CKV_AWS_272: Policy requires broad access for this module to function
  # checkov:skip=CKV_AWS_356: Policy requires broad access for this module to function
  queue_url = aws_sqs_queue.examplea.id
  policy    = var.policy
}
