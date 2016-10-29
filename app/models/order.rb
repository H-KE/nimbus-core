class Order < ApplicationRecord
  has_many :order_details
  belongs_to :user
  belongs_to :retailer

  def send_to_retailer()
    if retailer.uses_help_desk?
      ticket_html = render_to_string(:partial => 'desk_ticket_confirm.html',
                                      :locals => { user: user,
                                                   order: self,
                                                   orderDetails: self.order_details,
                                                   retailer: retailer,
                                                   documents: user.verification_documents,
                                                   updateUrl: update_url,
                                                   shippingAddress: self.shipping_address })
      response = retailer.create_order_ticket(ticket_html.to_json)
      if response.success?
        help_desk_ticket_id = response.body["id"]
      else
        update(status: "unsent")
      end
    else
      RetailerMailer.order_confirmation_email(self, "info.nimbusfly@gmail.com").deliver
      RetailerMailer.order_confirmation_email(self, retailer[:email]).deliver
    end
  end

  def send_to_user()
    UserMailer.order_confirmation_email(self).deliver
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
