class AddRetailerColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :retailers, :mail, :boolean
    add_column :retailers, :delivery, :boolean
    add_column :retailers, :pickup, :boolean
    add_column :retailers, :email, :string
    add_column :retailers, :phone_number, :string
  end
end
