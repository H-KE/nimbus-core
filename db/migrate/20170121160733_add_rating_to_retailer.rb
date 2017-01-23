class AddRatingToRetailer < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :rating, :decimal, default: 0.0
  end
end
