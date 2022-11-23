include "root" {
  path = find_in_parent_folders()
}

terraform {
    source = "../../../modules/iam_policy"
}
inputs ={ 
    iam_name = "iam_name"
    iam_policy =  [
           {
        Action   = ["s3:ListAllMyBuckets", "s3:ListBucket", "s3:HeadBucket"]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
}