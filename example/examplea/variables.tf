variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "kms_master_key_id" {
  type    = string
  default = "alias/aws/sqs"
}

variable "kms_data_key_reuse_period_seconds" {
  type    = number
  default = 300
}


variable "name" {
  type = string
}
