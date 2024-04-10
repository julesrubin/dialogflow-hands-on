resource "google_dialogflow_cx_agent" "agent" {
  display_name          = "test-agent"
  location              = var.location
  default_language_code = "fr"
  time_zone             = var.time_zone
}
