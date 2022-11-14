include "root" {
  path = find_in_parent_folders()
}

terraform {
    source = "github.com/NormanMueller/terragrunt_test_repo//modules/dynamodb"
}
inputs ={
    db_name = "test_db"
    hash_key = "id"
}