terraform {
  backend "gcs" {
    bucket = "data-platform-gcp-483515-tfstate"
    prefix = "envs/dev"
  }
}
