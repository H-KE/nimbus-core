class AddNameToOrderDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :order_details, :name, :string
  end
end
