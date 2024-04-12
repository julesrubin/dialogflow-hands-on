resource "google_dialogflow_cx_page" "page_artist_overview" {
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
  display_name = "Music"
  entry_fulfillment {
    messages {
      text {
        text = ["Welcome to the Music page."]
      }
    }
  }
}
