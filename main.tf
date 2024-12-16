terraform {
  backend "gcs" {
    bucket  = "wif-tfstate"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project = "blkbox-practice"
  region  = "us-central1"
}

resource "google_storage_bucket" "wif-storage-001" {
  name                     = "example-bucket-${random_id.unique_id.hex}"
  location                 = "us-central1"
  uniform_bucket_level_access = true
}
