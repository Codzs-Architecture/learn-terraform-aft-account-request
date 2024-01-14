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
    "env" = "np"
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
    AccountName               = "Network Non-Production"
    ManagedOrganizationalUnit = "Management"
    SSOUserEmail              = "network.nonproduction001@codzs.space"
    SSOUserFirstName          = "Network"
    SSOUserLastName           = "Nonproduction001"
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
    AccountName               = "Network Production"
    ManagedOrganizationalUnit = "Workload"
    SSOUserEmail              = "network.production001@codzs.space"
    SSOUserFirstName          = "Network"
    SSOUserLastName           = "Production001"
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

  account_customizations_name = "Network Production"
}

module "shared_nonproduction001" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shared.nonproduction001@codzs.space"
    AccountName               = "Shared Non-Production"
    ManagedOrganizationalUnit = "Management"
    SSOUserEmail              = "shared.nonproduction001@codzs.space"
    SSOUserFirstName          = "Shared"
    SSOUserLastName           = "Nonproduction001"
  }
  
  account_tags = {
    "org" = "Codzs"
    "dept" = "Application"
  }
 
  change_management_parameters = {
    change_requested_by = "Application Team"
    change_reason       = "To create non-production shared service"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Shared Non-production"
}

module "shared_production001" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shared.production001@codzs.space"
    AccountName               = "Shared Production"
    ManagedOrganizationalUnit = "Management"
    SSOUserEmail              = "shared.production001@codzs.space"
    SSOUserFirstName          = "Shared"
    SSOUserLastName           = "Production001"
  }
  
  account_tags = {
    "org" = "Codzs"
    "dept" = "Application"
  }
 
  change_management_parameters = {
    change_requested_by = "Application Team"
    change_reason       = "To create production shared service"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "Shared production"
}
