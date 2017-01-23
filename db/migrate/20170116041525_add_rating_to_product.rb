class AddRatingToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :retailers, :rating, :decimal, default: 0.0
  end
end
