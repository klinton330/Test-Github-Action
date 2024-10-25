

provider "genesyscloud" {
  oauthclient_id = "81a42da3-4d39-4997-8bdc-54224a996da3"
  oauthclient_secret = "gWBWTX3XPMgBjpL7YomgDl9wUwPQyQI5rKL-PFXOz_w"
  aws_region = "us-west-2"
}

terraform {
  required_providers {
    genesyscloud = {
      source = "MyPureCloud/genesyscloud"
      version = "1.49.1"
    }
  }

}

resource "genesyscloud_architect_user_prompt" "TestTerraformPrompt" {
  description = "testing and training purposes"
  name        = "Demo_Prompt 3"
  resources {
    tts_string = "This is demo Prompt for testing purpose with enviornment addded"
    language   = "en-us"
    text       = "This is demo Prompt ssss and training purposes"
  }
}

