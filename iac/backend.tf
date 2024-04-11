terraform {
  required_version = ">= 0.15"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.24.0"
    }
  }
  backend "gcs" {
    bucket = "${var.project_id}-gcs-tfstate-dialogflow"
    prefix = "terraform-states"
  }
}