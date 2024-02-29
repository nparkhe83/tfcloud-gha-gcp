variable "GOOGLE_CREDENTIALS" {
  description = "The credentials to use for GCP. You can provide these in the TF Cloud"
  sensitive   = true
  default     = ""
}
