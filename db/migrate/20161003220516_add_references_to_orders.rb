class AddReferencesToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :user, foreign_key: true
    add_reference :orders, :retailer, foreign_key: true
    add_column :orders, :address, :string
  end
end
