class AddBioAndFreeShippingCapToRetailer < ActiveRecord::Migration[5.0]
  def change
    add_column :retailers, :bio, :string
    add_column :retailers, :free_shipping_cap, :decimal
  end
end
