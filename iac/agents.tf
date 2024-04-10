resource "google_dialogflow_cx_agent" "agent" {
  project               = var.project_id
  display_name          = "dialogflow-hands-on"
  location              = var.location
  default_language_code = var.default_language_code
  time_zone             = var.time_zone
}
