resource "aws_sqs_queue_policy" "examplea" {
  queue_url = aws_sqs_queue.examplea.id
  policy    = var.policy
}
