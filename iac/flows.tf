resource "google_dialogflow_cx_flow" "start_flow" {
  parent                = google_dialogflow_cx_agent.agent.id
  display_name          = "My Default Start Flow"
  description           = "A start flow created along with the agent. My own description."
  is_default_start_flow = true
  event_handlers {
    event = "sys.no-match-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["Sorry, could you say that again?"]
        }
      }
    }
  }
  event_handlers {
    event = "sys.no-input-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["One more time?"]
        }
      }
    }
  }
  transition_routes {
    intent = "${google_dialogflow_cx_agent.agent.id}/intents/${var.default_welcome_intent}"
    trigger_fulfillment {
      messages {
        text {
          text = ["Welcome, I am the virtual agent of G-Records, a fictional rock label. You can order artists merchandise, ask questions about your order or shipping, and I can tell you more which artists are currently signed with us. How can I help?"]
        }
      }

    }
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_artists_overview.id
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_product_overview.id
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_shirts.id
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_music.id
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_product.id
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_product_of_artist.id
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_refund_info.id
    target_flow = google_dialogflow_cx_flow.customer_care.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_shipping_info.id
    target_flow = google_dialogflow_cx_flow.customer_care.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_swapping_info.id
    target_flow = google_dialogflow_cx_flow.customer_care.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_my_order.id
    target_flow = google_dialogflow_cx_flow.my_order.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_my_order_canceled.id
    target_flow = google_dialogflow_cx_flow.my_order.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_my_order_status.id
    target_flow = google_dialogflow_cx_flow.my_order.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_end.id
    target_page = "${google_dialogflow_cx_agent.agent.start_flow}/pages/END_SESSION"
  }
}

resource "google_dialogflow_cx_flow" "catalog" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Catalog"
  description  = "Catalog flow"
  event_handlers {
    event = "sys.no-match-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["Sorry, could you say that again?"]
        }
      }
    }
  }

  event_handlers {
    event = "sys.no-input-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["One more time?"]
        }
      }
    }
  }

  event_handlers {
    event = "catalog"
    trigger_fulfillment {
      messages {
        text {
          text = ["Welcome to the catalog flow"]
        }
      }
    }
  }

  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_artists_overview.id
    target_page = google_dialogflow_cx_page.page_artist_overview.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_product.id
    target_page = google_dialogflow_cx_page.page_product.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_product_overview.id
    target_page = google_dialogflow_cx_page.page_product_overview.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_music.id
    target_page = google_dialogflow_cx_page.page_music.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_music.id
    target_page = google_dialogflow_cx_page.page_music.id
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_home.id
    target_page = "${google_dialogflow_cx_agent.agent.catalog}/pages/END_FLOW"
  }
  transition_routes {
    intent      = google_dialogflow_cx_intent.redirect_end.id
    target_page = "${google_dialogflow_cx_agent.agent.catalog}/pages/END_SESSION"
  }
}

resource "google_dialogflow_cx_flow" "customer_care" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Customer Care"
  description  = "Customer care flow"
  event_handlers {
    event = "sys.no-match-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["Sorry, could you say that again?"]
        }
      }
    }
  }

  event_handlers {
    event = "sys.no-input-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["One more time?"]
        }
      }
    }
  }

  event_handlers {
    event = "customer_care"
    trigger_fulfillment {
      messages {
        text {
          text = ["Welcome to the customer care flow"]
        }
      }
    }
  }
}

resource "google_dialogflow_cx_flow" "my_order" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "My Order"
  description  = "My order flow"
  event_handlers {
    event = "sys.no-match-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["Sorry, could you say that again?"]
        }
      }
    }
  }

  event_handlers {
    event = "sys.no-input-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["One more time?"]
        }
      }
    }
  }
  event_handlers {
    event = "my_order"
    trigger_fulfillment {
      messages {
        text {
          text = ["Welcome to the my order flow"]
        }
      }
    }
  }
}

resource "google_dialogflow_cx_flow" "order_process" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Order Process"
  description  = "Order process flow"
  event_handlers {
    event = "sys.no-match-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["Sorry, could you say that again?"]
        }
      }
    }
  }

  event_handlers {
    event = "sys.no-input-default"
    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["One more time?"]
        }
      }
    }
  }
  event_handlers {
    event = "order_process"
    trigger_fulfillment {
      messages {
        text {
          text = ["Welcome to the order process flow"]
        }
      }
    }
  }
}