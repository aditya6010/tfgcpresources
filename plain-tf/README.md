## There are various way to authenticate with GCP in terraform.

- Using provider block: here in .tf file itself we can provide the details for Credential file, project and region as:

```
provider "google" {
  credentials = file("<NAME>.json")

  project = "<PROJECT_ID>"
  region  = "us-central1"
  zone    = "us-central1-c"
}
```
- We can alternatively use the GOOGLE_CREDENTIALS environment variable, or any of the following ordered by precedence.

   - GOOGLE_CREDENTIALS
   - GOOGLE_CLOUD_KEYFILE_JSON
   - GCLOUD_KEYFILE_JSON
- 