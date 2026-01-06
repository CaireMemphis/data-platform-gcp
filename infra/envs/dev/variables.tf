variable "project_id" {
  type        = string
  description = "GCP project id"
}

variable "region" {
  type        = string
  description = "Default region"
  default     = "europe-west1"
}

variable "bq_location" {
  type        = string
  description = "BigQuery dataset location (EU or specific region)."
  default     = "EU"
}

variable "environment" {
  type        = string
  default     = "dev"
}
