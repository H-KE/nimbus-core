class Order < ApplicationRecord
  has_many :order_details
  belongs_to :user
  belongs_to :retailer

  def send_to_retailer(update_url, ticket_html)
    UserMailer.send_order_confirmation(user, self).deliver
    if retailer.uses_help_desk?
      response = retailer.create_order_ticket(ticket_html)
      if response.success?
        help_desk_ticket_id = response.body["id"]
      else
        update(status: "unsent")
      end
    else
      RetailerMailer.send_order_confirmation(user, self, "info.nimbusfly@gmail.com", update_url).deliver
      RetailerMailer.send_order_confirmation(user, self, retailer[:email], update_url).deliver
    end
    self
  end

  def shipping_address
    addressHash = JSON.parse address
    @shipping_address = addressHash["streetAndNumber"] + ', ' +
                        addressHash["aptNumber"] + ', ' +
                        addressHash["city"] + ', ' +
                        addressHash["province"] + ', ' +
                        addressHash["postalCode"]
  end
end
