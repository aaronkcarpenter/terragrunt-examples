terraform {
  source = "./terraform"
}

remote_state {
  backend = "gcs"
  config = {
    bucket   = "aaronc-demo-bucket-2025"
    prefix   = "terragrunt/single-stack"
    project  = "swift-climate-439711-s0"
    location = "us-central1"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

inputs = {}
