class AddShippingFeeToRetailers < ActiveRecord::Migration[5.0]
  def change
    add_column :retailers, :shipping_fee, :decimal, :default => 0, :null => false
  end
end
