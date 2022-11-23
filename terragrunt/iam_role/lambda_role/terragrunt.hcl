include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/iam_role"
}


inputs = {
  role_name = "rolle"
  policy_document = [{
    Effect  = "Allow"
    Action = ["sts:AssumeRole"]
    Principal: {
        "Service": "lambda.amazonaws.com"
      },
    }
  ]
}