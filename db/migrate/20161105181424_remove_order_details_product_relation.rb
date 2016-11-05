class RemoveOrderDetailsProductRelation < ActiveRecord::Migration[5.0]
  def change
    remove_reference :order_details, :product, foreign_key: true
    add_column :order_details, :images, :json
    add_column :order_details, :thumbnail, :string
  end
end
