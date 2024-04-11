resource "google_dialogflow_cx_flow" "default" {
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
    name        = "artist_overview"
    intent      = google_dialogflow_cx_intent.redirect_artists_overview.id
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    name        = "product_overview"
    intent      = google_dialogflow_cx_intent.redirect_product_overview
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    name        = "shirts"
    intent      = google_dialogflow_cx_intent.redirect_shirts
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    name        = "music"
    intent      = google_dialogflow_cx_intent.redirect_music
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    name        = "products"
    intent      = google_dialogflow_cx_intent.redirect_product
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    name        = "product_of_artist"
    intent      = google_dialogflow_cx_intent.redirect_product_of_artist
    target_flow = google_dialogflow_cx_flow.catalog.id
  }
  transition_routes {
    name        = "refund_info"
    intent      = google_dialogflow_cx_intent.redirect_refund_info
    target_flow = google_dialogflow_cx_flow.customer_care.id
  }
  transition_routes {
    name        = "shipping_info"
    intent      = google_dialogflow_cx_intent.redirect_shipping_info
    target_flow = google_dialogflow_cx_flow.customer_care.id
  }
  transition_routes {
    name        = "swapping_info"
    intent      = google_dialogflow_cx_intent.redirect_swapping_info
    target_flow = google_dialogflow_cx_flow.customer_care.id
  }
  transition_routes {
    name        = "my_order"
    intent      = google_dialogflow_cx_intent.redirect_my_order
    target_flow = google_dialogflow_cx_flow.my_order.id
  }
  transition_routes {
    name        = "my_order_canceled"
    intent      = google_dialogflow_cx_intent.redirect_my_order_canceled
    target_flow = google_dialogflow_cx_flow.my_order.id
  }
  transition_routes {
    name        = "my_order_status"
    intent      = google_dialogflow_cx_intent.redirect_my_order_status
    target_flow = google_dialogflow_cx_flow.my_order.id
  }
  # transition_routes {
  #   name        = "end"
  #   intent      = google_dialogflow_cx_intent.redirect_end
  #   target_page = google_dialogflow_cx_page.
  # }
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