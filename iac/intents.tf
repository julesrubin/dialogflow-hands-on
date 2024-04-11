resource "google_dialogflow_cx_intent" "redirect_artists_overview" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.artists.overview"
  description  = " Artists overview: The bands supported by the label"

  training_phrases {
    repeat_count = 1
    parts {
      text = "Which bands are signed?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Which bands"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Which artists"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Which artists are part of the record label"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Who is part of the label"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "From which bands can I buy merchandise"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Band merchandise"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Which music do you have?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I would like to know who are signed to the label"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Who are supported by the label"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "From who can I buy shirts"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "What music can I order"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Can I get an overview of all the artists"
    }
  }
}
resource "google_dialogflow_cx_intent" "redirect_product_overview" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.product.overview"
  description  = "Product overview: The merchandise items available"

  training_phrases {
    repeat_count = 1
    parts {
      text = "Which products do you sell?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "What merchandise items do you have?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "What are you selling?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "What are the items?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Which products?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "What merchandise?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Please tell me what you have"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "What items can I purchase?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Can you show me your merchandise?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to know about your products"
    }
  }
}

resource "google_dialogflow_cx_intent" "confirm_artists_overview" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "confirm.artists.overview"
  description  = "Confirmation of artists overview intent"
  parameters {
    entity_type = google_dialogflow_cx_entity_type.artist.id
    id          = "artist"
    is_list     = false
    redact      = false
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Yeah, let me buy merchandise"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Yes, I want to purchase something"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Yes, I would like to order merchandise from "
    }

    parts {
      parameter_id = "artist"
      text         = "Alice Googler"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Ok, let's buy stuff."
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Confirming merchandise purchase"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Yes, I'm interested in buying merchandise"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Alright, let's proceed with the merchandise purchase"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Sure, I'm ready to buy merchandise"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Confirming merchandise order"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Yes, I'm ready to purchase merchandise"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_price" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.price"
  description  = "Redirecting user inquiries about prices"

  training_phrases {
    repeat_count = 1
    parts {
      text = "How much does a t-shirt cost?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What's the price for the tour movie?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "The album is how much?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to know the price of a longsleeve shirt"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What's the price difference?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What does each product cost?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What does it cost?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What is the price?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "How much for the merchandise?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Could you tell me the price?"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_product" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.product"
  description  = "Redirect to product intent"
  training_phrases {
    repeat_count = 1
    parts {
      text = "Tour movie"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I am interested in a t-shirt"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Can I buy a digital album?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I want the CD"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to buy something"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Can I purchase a record?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to buy a t-shirt size M of The Google Dolls"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Can I purchase the Alice Googler digital album?"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_product_of_artist" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.product.of.artist"
  description  = "Redirect to products of a specific artist"

  parameters {
    entity_type = google_dialogflow_cx_entity_type.artist.id
    id          = "artist"
    is_list     = false
    redact      = false
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Yeah, let's shop"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Give me merch of "
    }

    parts {
      parameter_id = "artist"
      text         = "Alice Googler"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Shirts of "
    }

    parts {
      parameter_id = "artist"
      text         = "The Google Dolls"
    }

    parts {
      text = "  that would be nice."
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Yes"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want "
    }

    parts {
      parameter_id = "artist"
      text         = "The Goo Fighters"
    }

    parts {
      text = " stuff"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Yes, I want to order merchandise"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Yep, give me items of "
    }

    parts {
      parameter_id = "artist"
      text         = "G's N' Roses"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Go for it"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Anything "
    }

    parts {
      parameter_id = "artist"
      text         = "Alice Googler"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I am a "
    }

    parts {
      parameter_id = "artist"
      text         = "G's N' Roses"
    }

    parts {
      text = " fan!"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_shirts" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.shirts"
  description  = "Redirect to shirts, optionally specified by artist"

  parameters {
    entity_type = google_dialogflow_cx_entity_type.artist.id
    id          = "artist"
    is_list     = false
    redact      = false
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Shirts"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to buy shirts"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I am interested in shirts"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want a shirt"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Shirts of "
    }

    parts {
      parameter_id = "artist"
      text         = "G's N' Roses"
    }

    parts {
      text = " please"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Give me shirts of "
    }

    parts {
      parameter_id = "artist"
      text         = "the Google Dolls"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to buy shirts of "
    }

    parts {
      parameter_id = "artist"
      text         = "Alice Googler"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_music" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.music"
  description  = "Redirect to music, optionally specified by artist"

  parameters {
    entity_type = google_dialogflow_cx_entity_type.artist.id
    id          = "artist"
    is_list     = false
    redact      = false
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Music"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to buy music"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I am interested in music"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Give me music of "
    }

    parts {
      parameter_id = "artist"
      text         = "the Goo Fighters"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Music of "
    }

    parts {
      parameter_id = "artist"
      text         = "Goo Fighters"
    }

    parts {
      text = " please"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Interested in buying the "
    }

    parts {
      parameter_id = "artist"
      text         = "Alice Googler"
    }

    parts {
      text = " album"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Purchase "
    }

    parts {
      parameter_id = "artist"
      text         = "Alice Googler"
    }

    parts {
      text = " music"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_album" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.album"
  description  = "Redirect to albums"

  training_phrases {
    repeat_count = 1
    parts {
      text = "Hits"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Live Album"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want the Greatest Hits Digital Album"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Give me the Greatest Hits CD"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Hits on MP3"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_shirt_size" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.shirt.size"
  description  = "Redirect to shirt size"

  parameters {
    entity_type = google_dialogflow_cx_entity_type.size.id
    id          = "size"
    is_list     = false
    redact      = false
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What size do you have?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What sizes are available?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What size do you offer?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      parameter_id = "size"
      text         = "XS"
    }
    parts {
      text = " size"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Give me the "
    }
    parts {
      parameter_id = "size"
      text         = "S"
    }

    parts {
      text = " size"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want the "
    }
    parts {
      parameter_id = "size"
      text         = "M"
    }

    parts {
      text = " size"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I need the "
    }
    parts {
      parameter_id = "size"
      text         = "L"
    }

    parts {
      text = " size"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "My size is "
    }
    parts {
      parameter_id = "size"
      text         = "XL"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I wear "
    }
    parts {
      parameter_id = "size"
      text         = "2XL"
    }

    parts {
      text = " size"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      parameter_id = "size"
      text         = "Extra Large"
    }
    parts {
      text = " is my size"
    }
  }
}
resource "google_dialogflow_cx_intent" "redirect_my_order" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.my.order"
  description  = "Redirect to inquire about an order"
  training_phrases {
    parts {
      text = "About my order"
    }
  }
  training_phrases {
    parts {
      text = "I have a question about my order"
    }
  }
  training_phrases {
    parts {
      text = "My order is ABCD123, I have a question about my order."
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_my_order_status" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.my.order.status"
  description  = "Redirect to check the status of an order"
  parameters {
    entity_type = google_dialogflow_cx_entity_type.order_number.id
    id          = "order_number"
    is_list     = false
    redact      = false
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What's the status of my order?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Can you tell me the status of my order?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to know the status of my order"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What's the status of order number "
    }

    parts {
      parameter_id = "order_number"
      text         = "ABCD123"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "My order is "
    }

    parts {
      parameter_id = "order_number"
      text         = "EFGH456"
    }

    parts {
      text = " what's the status?"
    }
  }


  training_phrases {
    repeat_count = 1
    parts {
      text = "I need to know the status of order number "
    }

    parts {
      parameter_id = "order_number"
      text         = "IJKL789"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "When I will receive my order "
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_my_order_canceled" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.my.order.canceled"
  description  = "Redirect to check the cancellation status of an order"
  parameters {
    entity_type = google_dialogflow_cx_entity_type.order_number.id
    id          = "order_number"
    is_list     = false
    redact      = false
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Has my order been canceled?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Can you check if my order has been canceled?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to know if my order has been canceled"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Has order number "
    }
    parts {
      parameter_id = "order_number"
      text         = "ABCD123"
    }
    parts {
      text = " been canceled?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "My order "
    }
    parts {
      parameter_id = "order_number"
      text         = "EFGH456"
    }
    parts {
      text = " has been canceled, what's the status?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I need to check if order number "
    }
    parts {
      parameter_id = "order_number"
      text         = "IJKL789"
    }
    parts {
      text = " has been canceled"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "When will I receive my refund for order "
    }
    parts {
      parameter_id = "order_number"
      text         = "MNOP012"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_shipping_info" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.shipping.info"
  description  = "Redirect to shipping information"

  training_phrases {
    repeat_count = 1
    parts {
      text = "How long will it take?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "How long is shipping?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "How long does shipping take?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "When will I receive it?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "When will I get my order?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "When will I receive my order?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "When will I get my merchandise?"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_refund_info" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.refund.info"
  description  = "Redirect to refund information"
  training_phrases {
    repeat_count = 1
    parts {
      text = "I want a refund."
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Can I get a refund?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to return the CD."
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to return my t-shirt."
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_swapping_info" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.swapping.info"
  description  = "Redirect to swapping information"
  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to swap my item"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Can I change my t-shirt for a larger size?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Can I change my product?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to swap the CD"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_order_process" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.order.process"
  description  = "Redirect to order process"
  parameters {
    entity_type = google_dialogflow_cx_entity_type.artist.id
    id          = "artist"
    is_list     = false
    redact      = false
  }

  parameters {
    entity_type = google_dialogflow_cx_entity_type.merch.id
    id          = "merch"
    is_list     = false
    redact      = false
  }

  parameters {
    entity_type = google_dialogflow_cx_entity_type.size.id
    id          = "size"
    is_list     = false
    redact      = false
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to buy a "
    }

    parts {
      parameter_id = "merch"
      text         = "t-shirt"
    }

    parts {
      text = " from "
    }

    parts {
      parameter_id = "artist"
      text         = "Google Dolls"
    }

    parts {
      text = " in size "
    }

    parts {
      parameter_id = "size"
      text         = "S"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Let me buy the "
    }

    parts {
      parameter_id = "merch"
      text         = "CD"
    }

    parts {
      text = " from "
    }

    parts {
      parameter_id = "artist"
      text         = "Alice Googler"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Get me the "
    }

    parts {
      parameter_id = "merch"
      text         = "tour movie"
    }

    parts {
      text = " of "
    }

    parts {
      parameter_id = "artist"
      text         = "G's N' Roses"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Purchase the "
    }

    parts {
      parameter_id = "artist"
      text         = "Alice Googler"
    }

    parts {
      parameter_id = "merch"
      text         = " t-shirt "
    }
  }
}

resource "google_dialogflow_cx_intent" "confirm_proceed_order" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "confirm.proceed.order"
  description  = "Confirmation to proceed with an order"

  training_phrases {
    repeat_count = 1
    parts {
      text = "Yes"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Yes, please continue"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Yes order"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to order"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Yeah"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Yep"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I confirm"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Agree"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Go ahead"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Order"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Buy it"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Purchase"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Okay"
    }
  }
}

resource "google_dialogflow_cx_intent" "decline_proceed_order" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "decline.proceed.order"
  description  = "Decline to proceed with an order"
  training_phrases {
    repeat_count = 1
    parts {
      text = "No"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I rather not"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I don't want it anymore"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Don't order"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Stop"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Not anymore"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Nope"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Go back"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Reset"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Decline"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I don't need it"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_home" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.home"
  description  = "Redirect to the home intent"
  training_phrases {
    repeat_count = 1
    parts {
      text = "Go back"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Home"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Help"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "What else can I ask"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Restart"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Can you tell me what I can order?"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "What questions can I ask"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "I need help"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Advice please"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Hi"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Hello"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Good day!"
    }
  }
}

resource "google_dialogflow_cx_intent" "redirect_end" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "redirect.end"
  description  = "Redirect to the end intent"
  training_phrases {
    repeat_count = 1
    parts {
      text = "No that's it, goodbye"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Bye"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Cheers"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "End"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "That's it"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "No more questions"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Exit"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Have a good day"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "End Call"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "Close"
    }
  }
}
