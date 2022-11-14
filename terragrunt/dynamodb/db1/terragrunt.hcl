include "root" {
  path = find_in_parent_folders()
}

terraform {
    source = "github.com/NormanMueller/terragrunt_test_repo//modules/dynamodb"
}
inputs ={
    db_name = "test_datenbank"
    hash_key = "id"
}