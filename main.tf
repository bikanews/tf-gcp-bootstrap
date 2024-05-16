provider "google" {
  credentials = file("$GCP_CREDENTIALS")
  project     = "<starry-strand-395614>"
  region      = "us-central1"
}

resource "google_folder" "bootstrap_folder" {
  display_name = "fldr-bootstrap"
  parent       = "organizations/510613106678"
}

resource "google_project" "project_1" {
  name       = "eva-prj-iac-seed"
  project_id = "eva-prj-iac-seed"
  org_id     = "510613106678"
  billing_account = "019A3B-184BE4-980D3A"
}

resource "google_project" "project_2" {
  name       = "eva-prj-iac-cicd"
  project_id = "eva-prj-iac-cicd"
  org_id     = "510613106678"
  billing_account = "019A3B-184BE4-980D3A"
}