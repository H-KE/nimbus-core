class Retailer < ApplicationRecord
  has_many :products
  has_many :orders

  def create_order_ticket(html)
    due_date = DateTime.now + 1
    conn = Faraday.new(:url => help_desk_api_url) do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end

    conn.basic_auth help_desk_auth, ''
    response = conn.post do |req|
      req.url '/api/v2/tickets'
      req.headers['Content-Type'] = 'application/json'
      req.body = '{
        "description":' + html + ',
        "subject":"A new order has been placed",
        "email":"han@nimbusfly.co",
        "priority":2,
        "status":2,
        "due_by":' + due_date.to_json + ',
        "fr_due_by":' + due_date.to_json + ',
        "cc_emails":["info.nimbusfly@gmail.com"]
      }'
    end
  end

  def persist_menu(menu)

  end

  def clear_menu(date_created)

  end

  def uses_help_desk?
    help_desk_type != "NONE"
  end
end
