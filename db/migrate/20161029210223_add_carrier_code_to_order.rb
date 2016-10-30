class AddCarrierCodeToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :carrier_code, :string
  end
end
