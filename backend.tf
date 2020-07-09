terraform {
    backend "s3" {
        bucket = "rancher-mhassine-rampup"
        key = "tf-module-rancher-github.state"
        region = "eu-central-1"
    }
}