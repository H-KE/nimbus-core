class Order < ApplicationRecord
  has_many :order_details
  belongs_to :user
  belongs_to :retailer

  def shipping_address
    addressHash = JSON.parse address
    @shipping_address = addressHash["streetAndNumber"] + ', ' +
                        addressHash["aptNumber"] + ', ' +
                        addressHash["city"] + ', ' +
                        addressHash["province"] + ', ' +
                        addressHash["postalCode"]
  end
end
