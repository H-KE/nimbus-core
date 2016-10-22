class AddDeliveryFeeToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :delivery_fee, :decimal, :default => 0, :null => false
  end
end
