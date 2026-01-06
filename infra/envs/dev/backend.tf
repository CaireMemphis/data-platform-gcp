terraform {
  backend "gcs" {
    bucket = "data-platform-gcp-183515-tfstate"
    prefix = "envs/dev"
  }
}
