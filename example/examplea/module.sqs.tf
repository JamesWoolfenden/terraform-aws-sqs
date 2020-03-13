module "sqs" {
  source      = "../../"
  name        = var.name
  common_tags = var.common_tags
}
