terraform {
  backend "gcs" {
    bucket  = "wit-tfstate-dev"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project = "blkbox-practice"
  region  = "us-central1"
}

resource "google_pubsub_topic" "pubsub_topic" {
  name = "pubsub-topic-${random_id.unique_id.hex}"
}

resource "random_id" "unique_id" {
  byte_length = 8
}
