class AddWeedmapsUrlToRetailer < ActiveRecord::Migration[5.0]
  def change
    add_column :retailers, :weedmaps_listing, :string
  end
end
