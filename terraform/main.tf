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

module "network_nonproduction001" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "network.nonproduction001@codzs.space"
    AccountName               = "network nonproduction"
    ManagedOrganizationalUnit = "Network"
    SSOUserEmail              = "network.nonproduction001@codzs.space"
    SSOUserFirstName          = "network"
    SSOUserLastName           = "nonproduction001"
  }
  
  account_tags = {
    "org" = "Codzs"
    "dept" = "Network"
  }
 
  change_management_parameters = {
    change_requested_by = "Networking Team"
    change_reason       = "To create non-production network"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Network Non-production"
}

module "network_production001" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "network.production001@codzs.space"
    AccountName               = "network production"
    ManagedOrganizationalUnit = "Network"
    SSOUserEmail              = "network.production001@codzs.space"
    SSOUserFirstName          = "network"
    SSOUserLastName           = "production001"
  }
  
  account_tags = {
    "org" = "Codzs"
    "dept" = "Network"
  }
 
  change_management_parameters = {
    change_requested_by = "Networking Team"
    change_reason       = "To create production network"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "Network production"
}
