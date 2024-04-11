resource "google_dialogflow_cx_flow" "catalog" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Default Start Flow"
  description  = "A start flow created along with the agent. My own description."
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