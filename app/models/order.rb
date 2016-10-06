class Order < ApplicationRecord
  has_many :order_details
  belongs_to :user
  belongs_to :retailer
end
