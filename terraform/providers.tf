data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}

output "caller_arn" {
  value = "${data.aws_caller_identity.current.arn}"
}

output "caller_user" {
  value = "${data.aws_caller_identity.current.user_id}"
}
variable "aws_region" {
  default = "us-east-2"
}

provider "aws" {
  region = "${var.aws_region}"
}
