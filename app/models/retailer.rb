class Retailer < ApplicationRecord
  has_many :products
  has_many :orders

  def create_order_ticket(html)
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
        "email":"hello@nimbusfly.co",
        "priority":1,
        "status":2,
        "cc_emails":["info.nimbusfly@gmail.com","peter@nimbusfly.co"]
      }'
    end
    puts response.body
  end
end
