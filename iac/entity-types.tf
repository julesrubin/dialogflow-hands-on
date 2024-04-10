resource "google_dialogflow_cx_entity_type" "artist" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Artist"
  kind         = "KIND_MAP"
  entities {
    value    = "The Google Dolls"
    synonyms = ["Google Dolls"]
  }
  entities {
    value    = "The Goo Fighters"
    synonyms = ["Goo Fighters"]
  }
  entities {
    value    = "G's N' Roses"
    synonyms = ["Gs and Roses"]
  }
  entities {
    value    = "Alice Googler"
    synonyms = ["Alice"]
  }

  enable_fuzzy_extraction = true
}

resource "google_dialogflow_cx_entity_type" "merch" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Merch"
  kind         = "KIND_MAP"

  entities {
    value    = "T-shirt"
    synonyms = ["Tee", "Shirt"]
  }

  entities {
    value    = "Longsleeve"
    synonyms = ["Longsleeve Shirt"]
  }

  entities {
    value    = "CD"
    synonyms = ["Compact Disc"]
  }


  entities {
    value    = "Digital Album"
    synonyms = ["Digital Music", "Digital Songs"]
  }

  entities {
    value    = "Tour Movie"
    synonyms = ["Concert Movie"]
  }

  enable_fuzzy_extraction = true
}

resource "google_dialogflow_cx_entity_type" "album" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Album"
  kind         = "KIND_MAP"

  entities {
    value    = "Greatest Hits"
    synonyms = ["Best Of", "Greatest Songs"]
  }
  entities {
    value    = "Live"
    synonyms = ["Live Album", "Concert Album"]
  }

}

resource "google_dialogflow_cx_entity_type" "size" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Size"
  kind         = "KIND_MAP"

  entities {
    value    = "XS"
    synonyms = ["Extra Small"]
  }

  entities {
    value    = "S"
    synonyms = ["Small"]
  }

  entities {
    value    = "M"
    synonyms = ["Medium"]
  }

  entities {
    value    = "L"
    synonyms = ["Large"]
  }

  entities {
    value    = "XL"
    synonyms = ["Extra Large"]
  }

  entities {
    value    = "2XL"
    synonyms = ["Double Extra Large", "XXL", "Extra Extra Large"]
  }

  entities {
    value    = "3XL"
    synonyms = ["Triple Extra Large", "XXXL", "Extra Extra Extra Large"]
  }

  enable_fuzzy_extraction = true
}

resource "google_dialogflow_cx_entity_type" "order_number" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "OrderNumber"
  kind         = "KIND_REGEXP"
  entities {
    value = ["\\w{4}\\d{3}"]
  }
}