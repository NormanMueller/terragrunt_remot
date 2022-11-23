resource "aws_iam_policy" "iam_policy" {
  name = var.iam_name
  policy =   {
    Version = "2012-10-17"
    Statement = var.iam_policy
  }
}
  