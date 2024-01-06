module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "poc1-sandbox001@codzs.space"
    AccountName               = "Poc1 Sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "poc1-sandbox001@codzs.space"
    SSOUserFirstName          = "Poc1"
    SSOUserLastName           = "Sandbox001"
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

  account_customizations_name = "Poc1-Sandbox"
}
