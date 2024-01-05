module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sandbox001@codzs.space"
    AccountName               = "Sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "sandbox001@codzs.space"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "001"
  }

  account_tags = {
    "org" = "Codzs"
    "dept" = "POC"
  }
 
  change_management_parameters = {
    change_requested_by = "Learning Team"
    change_reason       = "To do POC with AFT"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Sandbox"
}
