class CreateRetailers < ActiveRecord::Migration[5.0]
  def change
    create_table :retailers do |t|
      t.string :name
      t.text :description
      t.text :address
      t.string :image_url

      t.timestamps
    end
  end
end
