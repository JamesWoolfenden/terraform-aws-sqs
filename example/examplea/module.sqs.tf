module "sqs" {
  source      = "../../"
  name        = var.name
  policy      = data.aws_iam_policy_document.sqs.json
  common_tags = var.common_tags
}

data "aws_iam_policy_document" "sqs" {

  // "Version": "2012-10-17",
  policy_id = "sqspolicy"
  statement {
    sid = 1

    effect = "Allow"
    principals {
      type        = "*"
      identifiers = ["*"]
    }
    actions   = ["sqs:SendMessage"]
    resources = [module.sqs.queue.arn]
    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = [aws_sns_topic.examplea.arn]
    }
  }
}
