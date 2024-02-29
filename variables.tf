variable "GOOGLE_CREDENTIALS" {
  description = "The credentials to use for GCP. You can provide these in the TF Cloud"
  sensitive   = true
  default     = ""
}

variable "GOOGLE_CREDENTIALS_1" {
  description = "The credentials to use for GCP. You can provide these in the TF Cloud"
  sensitive   = true
  default     = ""
}

variable "GOOGLE_CREDENTIALS_2" {
  description = "The credentials to use for GCP. You can provide these in the TF Cloud"
  default     = ""
}

variable "project_id" {
  default = "qwik-temp"
}
