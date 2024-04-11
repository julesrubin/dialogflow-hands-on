resource "google_dialogflow_cx_page" "artist_overview" {
  parent       = google_dialogflow_cx_flow.catalog.id
  display_name = "Artist Overview"
}

resource "google_dialogflow_cx_page" "product" {
  parent       = google_dialogflow_cx_flow.catalog.id
  display_name = "Product"
}

resource "google_dialogflow_cx_page" "product_overview" {
  parent       = google_dialogflow_cx_flow.catalog.id
  display_name = "Product Overview"
}

resource "google_dialogflow_cx_page" "music" {
  parent       = google_dialogflow_cx_flow.catalog.id
  display_name = "Music"
}
