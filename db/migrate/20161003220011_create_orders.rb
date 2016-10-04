class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.string :status
      t.string :ship_date
      t.string :distribution_channel

      t.timestamps
    end
  end
end
