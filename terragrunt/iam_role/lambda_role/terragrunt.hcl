include "root" {
  path = find_in_parent_folders()
}

terraform {
    source = "../../../modules/iam_role"
}
inputs ={
    role_name = "rolle"
}