provider "google" {
  credentials = file("C:/Users/beatriz.leite.santos/Documents/Geneva-teste/credenciais/starry-strand-395614-0008357ef180.json")
  project     = "<starry-strand-395614>"
  region      = "us-central1"
}


## FOLDERS ##


## BOOTSTRAP - Level 1 Folder ##
resource "google_folder" "bootstrap_folder" {
  display_name = "fldr-bootstrap"
  parent       = "organizations/510613106678"
}

## SHARED - Level 1 Folder ##
resource "google_folder" "fldr-shared_folder" {
  display_name = "fldr-shared"
  parent       = "organizations/510613106678"
}



## PROJECTS ##

# Bootstrap projects #
resource "google_project" "project_1" {
  name            = "eva-prj-iac-seed"
  project_id      = "eva-prj-iac-seed"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.bootstrap_folder.name
}

resource "google_project" "project_2" {
  name            = "eva-prj-iac-cicd"
  project_id      = "eva-prj-iac-cicd"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.bootstrap_folder.name
}