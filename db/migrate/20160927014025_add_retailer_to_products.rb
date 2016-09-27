class AddRetailerToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :retailer, foreign_key: true
    add_column :products, :images, :json
    add_column :products, :prices, :json
    add_column :products, :price_labels, :json
    add_column :products, :thc, :decimal
    add_column :products, :cbd, :decimal
    add_column :products, :subspecies, :string
    add_column :products, :category, :string
    remove_column :products, :price
  end
end
