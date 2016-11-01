class Order < ApplicationRecord
  has_many :order_details
  belongs_to :user
  belongs_to :retailer
  belongs_to :address

  def send_order_to_retailer
    if retailer.uses_help_desk?
      ticket_html = render_to_string(:partial => 'desk_ticket_confirm.html',
                                      :locals => { user: user,
                                                   order: self,
                                                   orderDetails: self.order_details,
                                                   retailer: retailer,
                                                   documents: user.verification_documents,
                                                   shippingAddress: self.shipping_address })
      response = retailer.create_order_ticket(ticket_html.to_json)
      if response.success?
        help_desk_ticket_id = response.body["id"]
      else
        raise "error sending freshdesk ticket"
      end
    else
      begin
        RetailerMailer.order_confirmation_email(self, "orders@nimbusfly.com").deliver
        RetailerMailer.order_confirmation_email(self, retailer[:email]).deliver
      rescue => e
        raise e
      end
    end
  end

  def send_order_to_user
    UserMailer.order_confirmation_email(self).deliver
  end

  def send_user_status_update
    UserMailer.order_status_email(self).deliver
  end

  def shipping_address
    address = self.address
    @shipping_address = address.primary + ' ' +address.secondary + ', ' +
                        address.city + ', ' +
                        address.province + ', ' +
                        address.postal_code
  end

  def readable_status
    return self[:status].split.map(&:capitalize).join(' ').split(/_/).join(' ')
  end

  def readable_carrier
    return self[:carrier_code].split(/_/).join(' ').split.map(&:capitalize).join(' ')
  end
end
