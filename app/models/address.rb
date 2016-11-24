class Address < ApplicationRecord
  belongs_to :user

  def shipping_address
    @shipping_address = primary + ' ' + secondary + ', ' +
                        city + ', ' +
                        province + ', ' +
                        postal_code
  end
end
