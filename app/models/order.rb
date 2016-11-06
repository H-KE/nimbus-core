class Order < ApplicationRecord
  has_many :order_details
  belongs_to :user
  belongs_to :retailer
  belongs_to :address

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
