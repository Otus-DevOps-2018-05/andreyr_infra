terraform {
  backend "gcs" {
    bucket = "andreyr-bucket-test"
    prefix = "terraform/state"
  }
}
