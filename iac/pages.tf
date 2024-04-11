resource "google_dialogflow_cx_page" "page_artist_overview" {
  parent       = google_dialogflow_cx_flow.catalog.id
  display_name = "Artist Overview"
}

resource "google_dialogflow_cx_page" "page_product" {
  parent       = google_dialogflow_cx_flow.catalog.id
  display_name = "Product"
}

resource "google_dialogflow_cx_page" "page_product_overview" {
  parent       = google_dialogflow_cx_flow.catalog.id
  display_name = "Product Overview"
}

resource "google_dialogflow_cx_page" "page_music" {
  parent       = google_dialogflow_cx_flow.catalog.id
  display_name = "Music"
}
