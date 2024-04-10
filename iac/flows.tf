resource "google_dialogflow_cx_flow" "catalog" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Catalog"
  description  = "Catalog flow"
}

resource "google_dialogflow_cx_flow" "customer_care" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Customer Care"
  description  = "Customer care flow"
}

resource "google_dialogflow_cx_flow" "my_order" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "My Order"
  description  = "My order flow"
}

resource "google_dialogflow_cx_flow" "order_process" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Order Process"
  description  = "Order process flow"
}