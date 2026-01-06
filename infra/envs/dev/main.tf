resource "google_storage_bucket" "tf_state" {
  name                        = "${var.project_id}-tfstate"
  location                    = var.region
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}

resource "google_bigquery_dataset" "raw" {
  dataset_id                 = "raw"
  friendly_name              = "Raw layer"
  description                = "Raw ingested data"
  location                   = var.bq_location
  delete_contents_on_destroy = true
}

resource "google_bigquery_dataset" "stg" {
  dataset_id                 = "staging"
  friendly_name              = "Staging layer"
  description                = "dbt staging models"
  location                   = var.bq_location
  delete_contents_on_destroy = true
}

resource "google_bigquery_dataset" "mrt" {
  dataset_id                 = "marts"
  friendly_name              = "Marts layer"
  description                = "dbt marts models"
  location                   = var.bq_location
  delete_contents_on_destroy = true
}
