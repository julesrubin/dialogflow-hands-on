variable "project_id" {
  type        = string
  description = "Project identifier"
  default     = "dgc-data-plp-pd"
}

variable "location" {
  description = "GCP location"
  type        = string
  default     = "us-central1"
}

variable "time_zone" {
  description = "Time zone"
  type        = string
  default     = "Europe/Madrid"
}

variable "default_language_code" {
  description = "Default language code"
  type        = string
  default     = "en"
}
variable "default_welcome_intent" {
  description = "Default welcome intent"
  type        = string
  default     = "00000000-0000-0000-0000-000000000000"
}