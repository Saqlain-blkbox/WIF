resource "google_storage_bucket" "wif-bucket" {
  name          = "wif-storage-bucket"
  location      = "us-central1"
  project       = "tt-dev-001"
  public_access_prevention = "enforced"
}
