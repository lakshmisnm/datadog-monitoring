terraform {
  required_providers {
    datadog = {
      source = "DataDog/datadog"
      version = "~> 3.36.0"
    }
  }
}


provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}

resource "datadog_synthetics_test" "browser_test" {
  name       = "Sureprep test"
  type       = "browser"
  status     = "live"
  device_ids = ["laptop_large"]
  message    = "Example test for Terraform"
  locations  = ["aws:ca-central-1"]
  
  request_definition {
    method = "GET"
    url    = "https://corp.sureprep.com/"
  }

  options_list {
    tick_every = 3600
    retry {
      count    = 2
      interval = 300
    }
 }

}
