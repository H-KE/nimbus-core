class CreateOrderDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :order_details do |t|
      t.decimal :price
      t.string :quantity
      t.decimal :total

      t.timestamps
    end
  end
end
