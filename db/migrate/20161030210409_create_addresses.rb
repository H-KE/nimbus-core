class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.belongs_to :user, index: true, unique: false, foreign_key: true
      t.integer :street_number
      t.string :route
      t.string :primary
      t.string :secondary
      t.string :city
      t.string :province
      t.string :postal_code

      t.timestamps
    end
  end
end
