class AddPaymentReceivedToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :payment_received, :boolean
  end
end
