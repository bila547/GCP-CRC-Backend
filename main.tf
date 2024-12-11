provider "google" {
  project = "bilal-project-442907"
  region  = "us-central1"
}

resource "google_cloudfunctions_function" "visitor_counter" {
  name        = "bilal-2nd"
  runtime     = "python311"
  entry_point = "visitor_counter"
  source_archive_bucket = "bilaldev.site"
  source_archive_object = "cloud-resume-terraform.zip"
  trigger_http = true
}