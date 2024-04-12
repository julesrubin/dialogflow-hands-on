import {
  #   import the start page of the catalog flow
  id = "${google_dialogflow_cx_agent.agent.catalog_flow}/pages/START_PAGE"
  to = google_dialogflow_cx_page.catalog_flow_start_page
}

# make modifications to the start page of the catalog flow
resource "google_dialogflow_cx_page" "catalog_flow_start_page" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Start Page"
}

resource "google_dialogflow_cx_page" "page_artist_overview" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Artist Overview"
  entry_fulfillment {
    messages {
      text {
        text = ["Welcome to the Artist Overview page."]
      }
    }
  }
}

resource "google_dialogflow_cx_page" "page_product" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Product"
  entry_fulfillment {
    messages {
      text {
        text = ["Welcome to the Product page."]
      }
    }

  }
}

resource "google_dialogflow_cx_page" "page_product_overview" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Product Overview"
  entry_fulfillment {
    messages {
      text {
        text = ["Welcome to the Product Overview page."]
      }
    }
  }
}

resource "google_dialogflow_cx_page" "page_music" {
  parent       = google_dialogflow_cx_flow.catalog_flow.id
  display_name = "Music"
  entry_fulfillment {
    messages {
      text {
        text = ["Welcome to the Music page."]
      }
    }
  }
}
